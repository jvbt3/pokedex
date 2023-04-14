import 'package:flutter/material.dart';
import 'package:pokedex/view/detail/container/detail_container.dart';
import 'package:pokedex/widgets/circle.dart';

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
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Pokédex',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Pokemon',
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Circle(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: SizedBox(
                    height: 90,
                    child: Image(
                      image: AssetImage(
                        'assets/images/pokebola.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Center(
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
