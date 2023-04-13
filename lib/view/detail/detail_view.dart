import 'package:flutter/material.dart';

import '../../models/pokemon_model.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.name, required this.list}) : super(key: key);

  final String name;

  final List<Pokemon> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}
