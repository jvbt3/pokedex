import 'package:flutter/material.dart';

class HomeViewLoading extends StatelessWidget {
  const HomeViewLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
