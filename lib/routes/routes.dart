import 'package:flutter/material.dart';
import 'package:pokedex/repository/pokemon_repository.dart';
import 'package:pokedex/view/detail/container/detail_container.dart';
import 'package:pokedex/view/home/container/home_container.dart';

class PokeRoutes extends StatelessWidget {
  const PokeRoutes({Key? key, required this.iPokemonRepository})
      : super(key: key);

  final PokemonRepository iPokemonRepository;

  @override
  Widget build(BuildContext context) {
    return Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(builder: (context) {
              return HomeContainer(
                iPokemonRepository: iPokemonRepository,
                onSelected: (route, arguments) {
                  Navigator.of(context).pushNamed(route, arguments: arguments);
                },
              );
            });
          }
          if (settings.name == '/pokemon-details') {
            return MaterialPageRoute(builder: (context) {
              return DetailContainer(
                iPokemonRepository: iPokemonRepository,
                arguments: (settings.arguments as DetailArguments),
              );
            });
          }
        });
  }
}
