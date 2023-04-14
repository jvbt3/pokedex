import 'package:flutter/material.dart';

class Sound extends StatelessWidget {
  const Sound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 90,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 90,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.black,
                height: 10,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
