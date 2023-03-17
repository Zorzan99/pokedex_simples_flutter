import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/models/pokemon_model2.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  List<PokemonModel> pokemons = <PokemonModel>[];

  @override
  void onInit() {
    super.onInit();
    _fetchPokemons();
  }

  Future<void> _fetchPokemons() async {
    final url = Uri.https('raw.githubusercontent.com',
        '/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final teste = PokemonModel2.fromMap(data);
      print(teste);

      // for (var element in teste.chavePokemon) {
      //   pokemons.add(element);
      // }
      pokemons.addAll(teste.chavePokemon);
      print(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    isLoading.value = false;
  }
}
