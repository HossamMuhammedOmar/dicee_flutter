import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffe74c3c),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color(0xffe74c3c),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    var rng = new Random();
                    leftImageNumber = rng.nextInt(6) + 1;
                  });
                },
                child: Image.asset('Images/dice$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    var rng = new Random();
                    rightImageNumber = rng.nextInt(6) + 1;
                  });
                },
                child: Image.asset('Images/dice$rightImageNumber.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
