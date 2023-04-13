import 'package:flutter/material.dart';
import 'package:pokedex/view/detail/detail_view.dart';
import 'package:pokedex/widgets/loading_view.dart';
import '../../../models/pokemon_model.dart';
import '../../../repository/pokemon_repository.dart';
import '../../../widgets/error_view.dart';


class DetailArguments {
  final String name;

  DetailArguments({required this.name});
}

class DetailContainer extends StatelessWidget {
  const DetailContainer({Key? key,
    required this.iPokemonRepository,
    required this.arguments})
      : super(key: key);

  final IPokemonRepository iPokemonRepository;
  final DetailArguments arguments;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>> (
        future: iPokemonRepository.getAllPokemons(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingView();
          } else if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return DetailView(name: arguments.name, list: [],);
          } else if (snapshot.hasError) {
            return ErrorView(error: snapshot.error.toString());
          } else {
            return Container();
          }
        });
  }
}
