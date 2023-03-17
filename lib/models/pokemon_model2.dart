import 'dart:convert';

import 'package:pokedex/models/pokemon_model.dart';

class PokemonModel2 {
  final List<PokemonModel> chavePokemon;

  PokemonModel2(this.chavePokemon);

  Map<String, dynamic> toMap() {
    return {
      'pokemon': chavePokemon.map((x) => x.toMap()).toList(),
    };
  }

  factory PokemonModel2.fromMap(Map<String, dynamic> map) {
    return PokemonModel2(
      List<PokemonModel>.from(
          map['pokemon']?.map((x) => PokemonModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel2.fromJson(String source) =>
      PokemonModel2.fromMap(json.decode(source));

  @override
  String toString() => 'PokemonModel2(pokemons: $chavePokemon)';
}
