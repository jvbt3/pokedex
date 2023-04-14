import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: CircleAvatar(
            radius: 57,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 52,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.cyanAccent,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white54,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
