import 'dart:convert';

class PokemonModel {
  final int id;
  final String name;
  final String img;
  final List<String> type;

  PokemonModel(
    this.id,
    this.name,
    this.img,
    this.type,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'img': img,
      'type': type,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['img'] ?? '',
      List<String>.from(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonModel(id: $id, nam: $name, img: $img, type: $type)';
  }
}
