import 'package:flutter/material.dart';
import 'package:pokedex/view/home/home_view.dart';

import '../../models/pokemon_model.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.name, required this.list})
      : super(key: key);

  final String name;

  final List<Pokemon> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(name),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
