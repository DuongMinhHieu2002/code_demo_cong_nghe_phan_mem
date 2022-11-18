import 'package:login_with_signup/models/review.dart';

import './food.dart';

class Restaurant {
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;
  final List<Review> reviews;

  Restaurant({
    this.imageUrl,
    this.name,
    this.address,
    this.rating,
    this.menu,
    this.reviews,
  });
}
