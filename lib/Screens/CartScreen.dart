import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:login_with_signup/Screens/payments_screen.dart';
import 'package:provider/provider.dart';

import '../DatabaseHandler/db_helper.dart';
import '../Model/cart_model.dart';
import '../cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    Key key,
  }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DBHelper dbHelper = DBHelper();

  @override
  void initState() {
    super.initState();
    context.read<CartProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Giỏ hàng của bạn'),
        actions: [
          Badge(
            badgeContent: Consumer<CartProvider>(
              builder: (context, value, child) {
                return Text(
                  value.getCounter().toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                );
              },
            ),
            position: const BadgePosition(start: 30, bottom: 30),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<CartProvider>(
              builder: (BuildContext context, provider, widget) {
                if (provider.cart.isEmpty) {
                  return const Center(
                      child: Text(
                    'Không có món',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ));
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: provider.cart.length,
                      itemBuilder: (context, index) {
                        return Card(
                          // color: Colors.blueGrey.shade200,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    width: 60,
                                    height: 60,
                                    image:
                                        AssetImage(provider.cart[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      RichText(
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.blueGrey.shade800,
                                                fontSize: 16.0),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      '${provider.cart[index].productName}\n',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ]),
                                      ),
                                      RichText(
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.blueGrey.shade800,
                                                fontSize: 16.0),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      '${provider.cart[index].unitTag}\n',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ]),
                                      ),
                                      RichText(
                                        maxLines: 1,
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.blueGrey.shade800,
                                              fontSize: 16.0),
                                          children: [
                                            TextSpan(
                                                text:
                                                    '${provider.cart[index].productPrice} đ\n',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ValueListenableBuilder<int>(
                                    valueListenable:
                                        provider.cart[index].quantity,
                                    builder: (context, val, child) {
                                      return PlusMinusButtons(
                                        addQuantity: () {
                                          cart.addQuantity(
                                              provider.cart[index].id);
                                          dbHelper
                                              .updateQuantity(Cart(
                                                  id: index,
                                                  productId: index.toString(),
                                                  productName: provider
                                                      .cart[index].productName,
                                                  initialPrice: provider
                                                      .cart[index].initialPrice,
                                                  productPrice: provider
                                                      .cart[index].productPrice,
                                                  quantity: ValueNotifier(
                                                      provider.cart[index]
                                                          .quantity.value),
                                                  unitTag: provider
                                                      .cart[index].unitTag,
                                                  image: provider
                                                      .cart[index].image))
                                              .then((value) {
                                            setState(() {
                                              cart.addTotalPrice(double.parse(
                                                  provider
                                                      .cart[index].productPrice
                                                      .toString()));
                                            });
                                          });
                                        },
                                        deleteQuantity: () {
                                          cart.deleteQuantity(
                                              provider.cart[index].id);
                                          cart.removeTotalPrice(double.parse(
                                              provider.cart[index].productPrice
                                                  .toString()));
                                        },
                                        text: val.toString(),
                                      );
                                    }),
                                IconButton(
                                    onPressed: () {
                                      dbHelper.deleteCartItem(
                                          provider.cart[index].id);
                                      provider
                                          .removeItem(provider.cart[index].id);
                                      provider.removeCounter();
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red.shade800,
                                    )),
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
            ),
          ),
          Consumer<CartProvider>(
            builder: (BuildContext context, value, Widget child) {
              final ValueNotifier<int> totalPrice = ValueNotifier(null);
              for (var element in value.cart) {
                totalPrice.value =
                    (element.productPrice * element.quantity.value) +
                        (totalPrice.value ?? 0);
              }
              return Column(
                children: [
                  ValueListenableBuilder<int>(
                      valueListenable: totalPrice,
                      builder: (context, val, child) {
                        return ReusableWidget(
                          title: 'Thành tiền',
                          value: (val?.toStringAsFixed(2) ?? '0') + r' đ',
                        );
                      }),
                ],
              );
            },
          )
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => PaymentsScreen()));
        },
        child: Container(
          color: Colors.yellow.shade600,
          alignment: Alignment.center,
          height: 50.0,
          child: const Text(
            'Tiền hành đặt hàng',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class PlusMinusButtons extends StatelessWidget {
  final VoidCallback deleteQuantity;
  final VoidCallback addQuantity;
  final String text;
  const PlusMinusButtons(
      {Key key, this.addQuantity, this.deleteQuantity, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: deleteQuantity, icon: const Icon(Icons.remove)),
        Text(text),
        IconButton(onPressed: addQuantity, icon: const Icon(Icons.add)),
      ],
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final String title, value;
  const ReusableWidget({Key key, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            value.toString(),
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}