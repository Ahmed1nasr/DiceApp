import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dice(),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

List _diceimage = [
  'Assets/image/1.png',
  'Assets/image/2.png',
  'Assets/image/3.png',
  'Assets/image/4.png',
  'Assets/image/5.png',
  'Assets/image/6.png'
];
String _selectedimage = _diceimage[0];
final _random = new Random();

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text('Dice App')),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedimage = _diceimage[_random.nextInt(_diceimage.length)];
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            //  color: Colors.green,
            child: Image(image: AssetImage(_selectedimage)),
          ),
        ),
      ),
    );
  }
}
