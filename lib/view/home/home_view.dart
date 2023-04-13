import 'package:flutter/material.dart';

import '../../models/pokemon_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.list}) : super(key: key);

  final List<Pokemon> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext ctx, int index) {
          return ListTile(
            title: Text(list[index].name),
          );
        },
      ),
    );
  }
}
