import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final int rating;
  final bool isFavourite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    this.rating = 0,
    this.isFavourite = false,
  });
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "مقبض تحكم PS4™",
    price: 64.99,
    description: description,
    rating: 5,
    isFavourite: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "بنطلون رجالي رياضي أبيض",
    price: 50.5,
    description: description,
    rating: 4,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "قفازات XC Omega - Polygon سوداء",
    price: 36.55,
    description: description,
    rating: 4,
    isFavourite: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "سماعات الرأس",
    price: 20.20,
    description: description,
    rating: 3,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
