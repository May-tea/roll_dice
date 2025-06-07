import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice/constants/constants.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int _currentDiceNumber = 1;
  final Random randomizer = Random();

  void _rollDice() => setState(
    () => _currentDiceNumber = randomizer.nextInt(AppConstants.diceSides) + 1,
  );

  ButtonStyle get _buttonStyle => TextButton.styleFrom(
    backgroundColor: AppConstants.buttonTextStyle.color!.withAlpha(
      (0.1 * 255).round(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final String diceImage =
        '${AppConstants.imagepath}$_currentDiceNumber${AppConstants.imageExtension}';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(diceImage, width: AppConstants.imageWidth),
          const SizedBox(height: AppConstants.spacing),
          SizedBox(
            width: AppConstants.buttonWidth,
            child: TextButton(
              onPressed: _rollDice,
              style: _buttonStyle,
              child: const Text(
                AppConstants.buttonText,
                style: AppConstants.buttonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
