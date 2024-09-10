import 'package:flutter/material.dart';

class DiceContainerState extends StatefulWidget {
  const DiceContainerState({super.key});

  @override
  State<DiceContainerState> createState() {
    return _DiceContainerState();
  }
}

class _DiceContainerState extends State<DiceContainerState> {
  var currentDice = 1;

  void rollDice() {
    setState(() {
      if (currentDice >= 6) {
        currentDice = 1;
      } else {
        currentDice += 1;
      }
    });
  }

  @override
  build(context) {
    return Center(
      child: (Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDice.png',
            width: 300,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.only(top: 20),
              textStyle: const TextStyle(
                fontSize: 26,
              ),
            ),
            child: const Text('Roll dice'),
          )
        ],
      )),
    );
  }
}
