import 'package:flutter/material.dart';
import 'package:pokedex/view/detail/container/detail_container.dart';

import '../../models/pokemon_model.dart';

class HomeView extends StatelessWidget {
   HomeView({Key? key, required this.list, required this.onSelected})
      : super(key: key);

  final appBarBackground = const DecorationImage(
    image: AssetImage('assets/images/pokemon.png'),
    fit: BoxFit.cover,
  );

  final List<Pokemon> list;

  final Function(String, DetailArguments) onSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pokédex',
        style: TextStyle(
          fontSize: 30,
          fontFamily: 'Pokemon',
        ),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctx, int index) {
          return SizedBox(
            height: 200,
            child: Card(
              child: Column(
                children: [
                  Image.network(list[index].image,
                  fit: BoxFit.contain,
                  ),
                  Material(
                    elevation: 4,
                    child: ListTile(
                      title: Text(list[index].name,
                      style: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 20,
                      ),
                      ),
                      onTap: () => onSelected(
                        '/pokemon-details',
                        DetailArguments(
                          name: list[index].name,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


