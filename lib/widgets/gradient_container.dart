import 'package:flutter/material.dart';
import 'package:roll_dice/constants/constants.dart';
import 'package:roll_dice/widgets/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: AppConstants.gradientBeginAlignment,
          end: AppConstants.gradientEndAlignment,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
