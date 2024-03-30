import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/Constants/app_strings.dart';
import 'package:pokeapi_flutter/Constants/app_styles.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 20,
      child: Text(MyStrings.titlePoke, style: MyStyles.titleStyleText),
    );
  }
}
