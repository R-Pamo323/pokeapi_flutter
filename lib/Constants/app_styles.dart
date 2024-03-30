import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/Constants/app_colors.dart';

class MyStyles {
  static TextStyle titleStyleText = TextStyle(
      color: Colors.white70.withOpacity(0.6),
      fontWeight: FontWeight.bold,
      fontSize: 40);
  static TextStyle numPokemonStyleText = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18, color: MyColors.numPokemon);
  static TextStyle namePokemonStyleText = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18, color: MyColors.namePokemon);
}
