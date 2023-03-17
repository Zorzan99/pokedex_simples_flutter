import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/api/get_api_pokemon/get_api_pokemon.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialBinding: BindingsBuilder(
          () => Get.lazyPut<HomeController>(() => HomeController())),
    );
  }
}
