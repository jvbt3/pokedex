import 'package:flutter/material.dart';
import 'package:pokedex/view/detail/container/detail_container.dart';

import '../../models/pokemon_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.list, required this.onSelected})
      : super(key: key);

  final List<Pokemon> list;

  final Function(String, DetailArguments) onSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctx, int index) {
          return ListTile(
            title: Text(list[index].name),
            onTap: () => onSelected(
              '/pokemon-details',
              DetailArguments(
                name: list[index].name,
              ),
            ),
          );
        },
      ),
    );
  }
}
