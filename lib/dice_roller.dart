import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
          // * padding approach one
          // const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // * padding approach two
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll Dice'))
        ]);
  }
}
