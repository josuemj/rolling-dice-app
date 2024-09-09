import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key, required this.gradientColors});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          end: Alignment.topLeft,
          begin: Alignment.bottomRight,
        ),
      ),
    ));
  }
}
