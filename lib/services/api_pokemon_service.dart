import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiPokemonService {
  Future<void> fetchPokemon() async {
    final url = Uri.https('raw.githubusercontent.com',
        '/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
