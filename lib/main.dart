import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/repository/pokemon_repository.dart';
import 'package:pokedex/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex 2k23',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: PokeRoutes(
        iPokemonRepository: PokemonRepository(dio: Dio()),
      ),
      initialRoute: '/',

    );
  }
}
