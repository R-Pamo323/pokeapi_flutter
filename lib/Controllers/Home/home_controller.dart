import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  List pokedex = [];
  dynamic? colorPoke;

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

  void getPokemons() async {
    var response = await Uri.https("raw.githubusercontent.com",
        "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.get(response).then((value) {
      if (value.statusCode == 200) {
        var data = jsonDecode(value.body);
        pokedex = data["pokemon"];
        if (kDebugMode) {
          print("$pokedex");
        }
      }
    }).catchError((e) {
      print(e);
    });
  }

  dynamic setColor(int index) {
    dynamic setColor;
    switch (pokedex[index]["type"][0]) {
      case "Grass":
        setColor = Colors.greenAccent;
        //setColor = Colors.blue;
        break;
      case "Fire":
        setColor = Colors.redAccent;
        //setColor = Colors.red;
        break;
      case "Water":
        setColor = Colors.blue;
        break;
      case "Poison":
        setColor = Colors.deepPurpleAccent;
        //setColor = Colors.blue;
        break;
      case "Psychic":
        setColor = Colors.indigo;
        break;
      case "Fighting":
        setColor = Colors.orange;
        break;
      case "Bug":
        setColor = Colors.lightGreenAccent;
        //setColor = Colors.blue;
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
