import 'package:flutter/material.dart';

class AppConstants {
  static const List<Color> gradientColors = <Color>[
    Color.fromARGB(255, 33, 5, 109),
    Color.fromARGB(255, 68, 21, 149),
  ];

  static const String imagepath = 'assets/images/dice-';
  static const String imageExtension = '.png';
  static const double imageWidth = 300.0;
  static const String buttonText = 'Roll Dice';
  static const double buttonWidth = 270.0;
  static const int diceSides = 6;
  static const double spacing = 20.0;

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 28,
    color: Colors.white,
  );
}
