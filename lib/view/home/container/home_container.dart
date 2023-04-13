import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/repository/pokemon_repository.dart';
import 'package:pokedex/view/detail/container/detail_container.dart';
import 'package:pokedex/view/home/home_view.dart';
import 'package:pokedex/widgets/loading_view.dart';
import '../../../widgets/error_view.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer(
      {Key? key, required this.iPokemonRepository, required this.onSelected})
      : super(key: key);

  final IPokemonRepository iPokemonRepository;

  final Function(String, DetailArguments) onSelected;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: iPokemonRepository.getAllPokemons(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingView();
          } else if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return HomeView(
              list: snapshot.data!,
              onSelected: onSelected,
            );
          } else if (snapshot.hasError) {
            return ErrorView(
              error: snapshot.error.toString(),
            );
          } else {
            return Container();
          }
        });
  }
}
