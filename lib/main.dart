import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  void ballNumber(){
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          print('$ballnumber got pressed');
          ballNumber();
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}

class Ballpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}