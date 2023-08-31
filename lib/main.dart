import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        title: const Text("تطابق صور"),
        backgroundColor: Colors.blue,
      ),
      body: const tatabek(),
    ),
  ));
}

// ignore: camel_case_types
class tatabek extends StatefulWidget {
  const tatabek({super.key});

  @override
  State<tatabek> createState() => _tatabekState();
}

// ignore: camel_case_types
class _tatabekState extends State<tatabek> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? "مبروم لقد نجحت"
              : "حاول مرة أخرى",
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      rightImageNumber = Random().nextInt(8) + 1;
                      leftImageNumber = Random().nextInt(8) + 1;
                    },
                    child: Image(
                      image: AssetImage("imagess/image-$rightImageNumber.png"),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      setState(() {});
                      leftImageNumber = Random().nextInt(8) + 1;
                      rightImageNumber = Random().nextInt(8) + 1;
                    },
                    child: Image(
                      image: AssetImage("imagess/image-$leftImageNumber.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
