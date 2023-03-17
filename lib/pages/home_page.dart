import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/api/get_api_pokemon/get_api_pokemon.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokédex'),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.pokemons.length,
                itemBuilder: (context, index) {
                  final pokemon = controller.pokemons[index];
                  return ListTile(
                    leading: Image.network(pokemon.img),
                    subtitle: Text('Tipo ${pokemon.type}'),
                  );
                },
              ),
      ),
    );
  }
}
