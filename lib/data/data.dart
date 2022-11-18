import 'package:login_with_signup/models/review.dart';

import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';

// food
//quán hiếu
final _hutieu = Food(
  id: 1,
  imageUrl: 'assets/images/hutieu.jpg',
  name: 'hủ tiếu',
  restaurantName: 'Quán Hiếu',
  price: 25000,
);
final _banhcuon = Food(
  id: 2,
  imageUrl: 'assets/images/bancuon.jpeg',
  restaurantName: 'Quán Hiếu',
  name: 'bánh cuốn',
  price: 25000,
);
final _buncha = Food(
  id: 3,
  imageUrl: 'assets/images/buncha.jpeg',
  restaurantName: 'Quán Hiếu',
  name: 'bún chả',
  price: 25000,
);
final _pho = Food(
  id: 4,
  imageUrl: 'assets/images/pho.jpeg',
  restaurantName: 'Quán Hiếu',
  name: 'phở',
  price: 25000,
);
final _coca = Food(
  id: 5,
  imageUrl: 'assets/images/coca.jpeg',
  restaurantName: 'Quán Hiếu',
  name: 'Cocacola',
  price: 25000,
);
//quán chức
final _banhmi = Food(
  id: 6,
  imageUrl: 'assets/images/banhmi.jpeg',
  name: 'bánh mì',
  restaurantName: 'Quán Chức',
  price: 25000,
);
final _banhbao = Food(
  id: 7,
  imageUrl: 'assets/images/banhbao.jpeg',
  name: 'bánh bao',
  restaurantName: 'Quán Chức',
  price: 25000,
);
final _banhu = Food(
  id: 8,
  imageUrl: 'assets/images/banhu.jpeg',
  name: 'bánh ú',
  restaurantName: 'Quán Chức',
  price: 25000,
);
final _banhchung = Food(
  id: 9,
  imageUrl: 'assets/images/banhchung.jpeg',
  name: 'bánh chưng',
  restaurantName: 'Quán Chức',
  price: 25000,
);
final _tratac = Food(
  id: 10,
  imageUrl: 'assets/images/tratac.jpeg',
  name: 'trà tắc',
  restaurantName: 'Quán Chức',
  price: 25000,
);
// quán lan
final _comga = Food(
  id: 11,
  imageUrl: 'assets/images/comga.jpeg',
  name: 'cơm gà',
  restaurantName: 'Quán Lan',
  price: 25000,
);
final _combo = Food(
  id: 12,
  imageUrl: 'assets/images/combo.jpeg',
  name: 'cơm bò',
  restaurantName: 'Quán Lan',
  price: 25000,
);
final _comchay = Food(
  id: 13,
  imageUrl: 'assets/images/comchay.jpeg',
  name: 'cơm chay',
  restaurantName: 'Quán Lan',
  price: 25000,
);
final _comcho = Food(
  id: 14,
  imageUrl: 'assets/images/comcho.jpeg',
  name: 'cơm chó',
  restaurantName: 'Quán Lan',
  price: 25000,
);
final _nuocloc = Food(
  id: 15,
  imageUrl: 'assets/images/nuocloc.jpeg',
  name: 'nước lọc',
  restaurantName: 'Quán Lan',
  price: 25000,
);
// quan ngoc
final _chagio = Food(
  id: 16,
  imageUrl: 'assets/images/chagio.jpeg',
  name: 'chả giò',
  restaurantName: 'Quán Ngọc',
  price: 25000,
);
final _chaca = Food(
  id: 17,
  imageUrl: 'assets/images/chaca.jpeg',
  name: 'chả cá',
  restaurantName: 'Quán Ngọc',
  price: 25000,
);
final _chalua = Food(
  id: 18,
  imageUrl: 'assets/images/chalua.jpeg',
  name: 'chả lụa',
  restaurantName: 'Quán Ngọc',
  price: 25000,
);
final _chatreo = Food(
  id: 19,
  imageUrl: 'assets/images/tratreo.jpeg',
  name: 'chả treo',
  restaurantName: 'Quán Ngọc',
  price: 25000,
);
final _caphe = Food(
  id: 20,
  imageUrl: 'assets/images/caphe.jpeg',
  name: 'cà phê',
  restaurantName: 'Quán Ngọc',
  price: 25000,
);
// quan loc
final _cachim = Food(
  id: 21,
  imageUrl: 'assets/images/cachim.jpeg',
  name: 'cá chim',
  restaurantName: 'Quán Lộc',
  price: 25000,
);
final _camap = Food(
  id: 22,
  imageUrl: 'assets/images/camap.jpeg',
  name: 'cá mập',
  restaurantName: 'Quán Lộc',
  price: 25000,
);
final _cakiem = Food(
  id: 23,
  imageUrl: 'assets/images/cakiem.jpeg',
  name: 'cá kiếm',
  restaurantName: 'Quán Lộc',
  price: 25000,
);
final _cahoi = Food(
  id: 24,
  imageUrl: 'assets/images/cahoi.jpeg',
  name: 'cá hồi',
  restaurantName: 'Quán Lộc',
  price: 25000,
);
final _kemca = Food(
  id: 25,
  imageUrl: 'assets/images/kemca.jpeg',
  name: 'kem cá',
  restaurantName: 'Quán Lộc',
  price: 25000,
);
// userreview
final _review1 = Review(
  imageUrl: 'assets/images/hieu.jpg',
  name: 'quán ngon vãi ò',
  star: 4,
);
final _review2 = Review(
  imageUrl: 'assets/images/hieu.jpg',
  name: 'Món ăn rất ngon',
  star: 5,
);
final _review3 = Review(
  imageUrl: 'assets/images/hieu.jpg',
  name: 'Ăn cũng tạm được',
  star: 3,
);
final _review4 = Review(
  imageUrl: 'assets/images/lan.jpg',
  name: 'Chủ quán chửi khách',
  star: 2,
);
final _review5 = Review(
  imageUrl: 'assets/images/chuc.jpg',
  name: 'Sẽ đến ăn lại',
  star: 4,
);
final _review6 = Review(
  imageUrl: 'assets/images/ngoc.jpg',
  name: 'Món ăn siu ngon',
  star: 5,
);
final _review7 = Review(
  imageUrl: 'assets/images/chuc.jpg',
  name: 'Ông chủ bạo hàng bạn bè',
  star: 1,
);
final _review8 = Review(
  imageUrl: 'assets/images/hieu.jpg',
  name: 'Ông chủ rất đẹp trai',
  star: 4,
);
final _review9 = Review(
  imageUrl: 'assets/images/chuc.jpg',
  name: 'quán ngon vãi ò',
  star: 4,
);

List<Review> reviews1 = [
  _review1,
  _review2,
  _review3,
];
List<Review> reviews2 = [
  _review4,
  _review5,
  _review6,
];
List<Review> reviews3 = [
  _review7,
  _review8,
  _review9,
];
// int tinhsao(Restaurant restaurant) {
//   var tong = 0;
//   var trungbinh = 0;
//   for (int i = 0; i < restaurant.reviews.length; i++) {
//     tong += restaurant.reviews[i].star;
//   }
//   trungbinh = (tong / restaurant.reviews.length) as int;
// }

final _restaurant0 = Restaurant(
    imageUrl: 'assets/images/hieu.jpg',
    name: 'Quán Hiếu',
    address: '25 thịnh đán',
    rating: 5,
    menu: [
      _hutieu,
      _banhcuon,
      _buncha,
      _pho,
      _coca,
    ],
    reviews: [
      _review1,
      _review2,
      _review3,
    ]);
final _restaurant1 = Restaurant(
    imageUrl: 'assets/images/ngoc.jpg',
    name: 'Quán Ngọc',
    address: '26 sơn tiến',
    rating: 5,
    menu: [
      _chaca,
      _chagio,
      _chalua,
      _chatreo,
      _caphe,
    ],
    reviews: [
      _review4,
      _review5,
      _review6,
    ]);
final _restaurant2 = Restaurant(
    imageUrl: 'assets/images/chuc.jpg',
    name: 'Quán Chức',
    address: '27 Thái Nguyên',
    rating: 5,
    menu: [
      _banhmi,
      _banhbao,
      _banhu,
      _banhchung,
      _tratac,
    ],
    reviews: [
      _review4,
      _review5,
      _review6,
    ]);

final _restaurant3 = Restaurant(
    imageUrl: 'assets/images/lan.jpg',
    name: 'Quán Lan',
    address: 'ICTU',
    rating: 5,
    menu: [
      _comga,
      _combo,
      _comchay,
      _comcho,
      _nuocloc,
    ],
    reviews: [
      _review4,
      _review5,
      _review6,
    ]);
final _restaurant4 = Restaurant(
    imageUrl: 'assets/images/loc.jpg',
    name: 'Quán Lộc',
    address: 'ICTU',
    rating: 5,
    menu: [
      _cachim,
      _cahoi,
      _cakiem,
      _camap,
      _kemca,
    ],
    reviews: [
      _review4,
      _review5,
      _review6,
    ]);

List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant2,
  _restaurant3,
  _restaurant1,
  _restaurant4,
];

final currentUser = User(
  name: 'Damon',
  orders: [
    Order(
      date: 'Nov 10,2019',
      food: _banhmi,
      restaurant: _restaurant1,
      quantity: 1,
      price: 25000,
    ),
    Order(
      date: 'Nov 10,2019',
      food: _buncha,
      restaurant: _restaurant2,
      quantity: 1,
      price: 25000,
    ),
    Order(
      date: 'Nov 10,2019',
      food: _hutieu,
      restaurant: _restaurant3,
      quantity: 1,
      price: 25000,
    ),
  ],
);
