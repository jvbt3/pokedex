import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/repository/pokemon_repository.dart';
import 'package:pokedex/view/home/home_error_view.dart';
import 'package:pokedex/view/home/home_loading_view.dart';
import 'package:pokedex/view/home/home_view.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key, required this.iPokemonRepository}) : super(key: key);

  final IPokemonRepository iPokemonRepository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>> (
        future: iPokemonRepository.getAllPokemons(),
        builder: (ctx, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const HomeViewLoading();
      } else if (snapshot.connectionState == ConnectionState.done &&
          snapshot.hasData) {
        return HomeView(list: snapshot.data!);
      } else if (snapshot.hasError) {
        return HomeViewError(error: snapshot.error.toString());
      } else {
        return Container();
      }
    });
  }
}
