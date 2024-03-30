import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 20,
      child: Text(
        "Pokedex",
        style: TextStyle(
            color: Colors.white70.withOpacity(0.6),
            fontWeight: FontWeight.bold,
            fontSize: 40),
      ),
    );
  }
}
