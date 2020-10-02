import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff1c40f),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color(0xfff1c40f),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset('Images/dice1.png'),
            ),
            Expanded(
              child: Image.asset('Images/dice1.png'),
            ),
          ],
        )
      ],
    );
  }
}
