import 'dart:convert';

import 'package:http/http.dart' as http;

class PokeApi {
  final String web;
  final String infoWeb;
  const PokeApi(this.web, this.infoWeb);

  Future<List> getListPokemons() async {
    final response = await http.get(Uri.https(web, infoWeb));
    if (response.statusCode != 200) {
      throw http.ClientException("Error in the connection");
    }
    var data = jsonDecode(response.body);
    return data["pokemon"];
  }
}
