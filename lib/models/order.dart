import 'food.dart';
import 'restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;
  final int price;
  Order({
    this.restaurant,
    this.food,
    this.date,
    this.quantity,
    this.price,
  });
}
