import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -50,
        right: -50,
        child: Image.asset(
          "assets/pokeball.png",
          width: 170,
          fit: BoxFit.fitWidth,
        ));
  }
}
