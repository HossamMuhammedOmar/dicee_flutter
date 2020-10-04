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

class DicePage extends StatelessWidget {
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
                  print('you click me Left');
                },
                child: Image.asset('Images/dice1.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Righ Click Button');
                },
                child: Image.asset('Images/dice1.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
