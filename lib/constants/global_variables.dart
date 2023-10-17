import 'package:flutter/material.dart';

String uri = 'http://192.168.11.64:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(236, 156, 70, 46),
      Color.fromARGB(255, 246, 204, 92),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);

  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = const Color.fromARGB(255, 143, 136, 0);
  static var selectednavBarColor = const Color.fromARGB(255, 143, 136, 0);
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
  ];
  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Tshirt',
      'image': 'assets/images/Tshirt.jpg',
    },
    {
      'title': 'Shirt',
      'image': 'assets/images/Shirt.jpg',
    },
    {
      'title': 'OnePiece ',
      'image': 'assets/images/Onepiece.jpg',
    },
    {
      'title': 'Pant',
      'image': 'assets/images/Pant.jpg',
    },
    {
      'title': 'Jacket',
      'image': 'assets/images/Jacket.jpg',
    },
    {
      'title': 'Shoes',
      'image': 'assets/images/Shoes.jpg',
    },
  ];
}
