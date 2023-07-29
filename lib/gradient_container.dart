import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // * Multi constructor
  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;

  final List<Color> colors;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/dice-2.png', width: 200),
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
            ]),
      ),
    );
  }
}
