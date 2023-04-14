import 'package:flutter/material.dart';

class JoyStick extends StatelessWidget {
  const JoyStick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 60,
                width: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(''),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.black
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: const Text(''),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ), child: const Text(''),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: const Text(''),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                width: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(''),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
