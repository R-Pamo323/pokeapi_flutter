import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapi_flutter/Data/Providers/poke_api.dart';

class HomeController extends GetxController {
  List pokedex = [];
  dynamic colorPoke;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getPokemons();
    update();
  }

  Future<void> getPokemons() async {
    pokedex = await const PokeApi("raw.githubusercontent.com",
            "/Biuni/PokemonGO-Pokedex/master/pokedex.json")
        .getListPokemons();
    update();
  }

  dynamic setColor(int index) {
    dynamic setColor;
    switch (pokedex[index]["type"][0]) {
      case "Grass":
        setColor = Colors.greenAccent;
        break;
      case "Fire":
        setColor = Colors.redAccent;
        break;
      case "Water":
        setColor = Colors.blue;
        break;
      case "Poison":
        setColor = Colors.deepPurpleAccent;
        break;
      case "Psychic":
        setColor = Colors.indigo;
        break;
      case "Fighting":
        setColor = Colors.orange;
        break;
      case "Bug":
        setColor = Colors.lightGreenAccent;
        break;
      case "Ghost":
        setColor = Colors.deepPurple;
        break;
      case "Normal":
        setColor = Colors.cyan;
        break;
      default:
        setColor = Colors.pink;
    }
    return setColor;
  }
}
