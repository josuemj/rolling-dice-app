import 'package:flutter/material.dart';

class DiceContainer extends StatelessWidget {
  const DiceContainer({super.key});

  void roll() {}

  @override
  Widget build(context) {
    return Center(
      child: (Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-6.png',
            width: 200,
          ),
          TextButton(
            onPressed: roll,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 30),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text("Roll"),
          ),
        ],
      )),
    );
  }
}
