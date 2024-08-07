import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<BallPage> {
  var randomBall = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomBall = Random().nextInt(5) + 1;
                print('Ball number: $randomBall');
              });
            },
            child: Image.asset('images/ball$randomBall.png'),
          ),
        ),
      ),
    );
  }
}