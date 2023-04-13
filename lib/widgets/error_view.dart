import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Text(error),
      ),
    );
  }
}
