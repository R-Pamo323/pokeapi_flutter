import 'dart:convert';

import 'package:http/http.dart' as http;

class PokeApi {
  //final String url;
  const PokeApi();
/*
  Future<List> getPokemons() async {
    var response = await Uri.https("raw.githubusercontent.com",
        "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.get(response).then((value) {
      if (value.statusCode != 200) {
        throw http.ClientException("Error in the connection");
        /*var data = jsonDecode(value.body);
        return data["pokemon"];*/
      }
      return List.from(jsonDecode(value.body));
    }) .catchError((e) {
      print(e);
    })
        ;
  }*/
}
