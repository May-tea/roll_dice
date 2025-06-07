import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/gradient_container.dart';
import 'package:roll_dice/constants/constants.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
      home: Scaffold(
        body: GradientContainer(colors: AppConstants.gradientColors),
      ),
    ),
  );
}
