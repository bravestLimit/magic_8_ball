import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask me anything!'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Ball(),
          backgroundColor: Colors.blue.shade300,
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
