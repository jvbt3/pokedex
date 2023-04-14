import 'package:flutter/material.dart';
import 'package:pokedex/view/detail/container/detail_container.dart';
import 'package:pokedex/widgets/circle.dart';
import 'package:pokedex/widgets/joystick.dart';
import 'package:pokedex/widgets/sound.dart';
import '../../models/pokemon_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.list, required this.onSelected})
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
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.red),
                    height: 150,
                    child: Material(
                      elevation: 10,
                      color: Colors.redAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Circle(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: SizedBox(
                              height: 90,
                              child: Material(
                                borderRadius: BorderRadius.circular(50),
                                elevation: 15,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/images/pokebola.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Material(
                      elevation: 5,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 300,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(220, 222, 224, 1),
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(150, 0, 150, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  CircleAvatar(
                                    radius: 6,
                                  ),
                                  CircleAvatar(
                                    radius: 6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Container(
                              width: double.maxFinite,
                              height: 230,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 3,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: ListView.builder(
                                  itemCount: list.length,
                                  itemBuilder: (BuildContext ctx, int index) {
                                    return SizedBox(
                                      height: 200,
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.network(
                                              list[index].image,
                                              fit: BoxFit.contain,
                                            ),
                                            Material(
                                              elevation: 4,
                                              child: ListTile(
                                                title: Text(
                                                  list[index].name,
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JoyStick(),
                      Sound(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
