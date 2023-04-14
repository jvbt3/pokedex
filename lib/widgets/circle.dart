import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: CircleAvatar(
            radius: 57,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
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
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: const [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.yellowAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.lightGreenAccent,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
