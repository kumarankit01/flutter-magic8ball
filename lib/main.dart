import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('ASK ME ANYTHING'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallPage(),
      )),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: buildFlatButton(),
          )
        ],
      ),
    );
  }

  FlatButton buildFlatButton() {
    return FlatButton(
      onPressed: () {
        answerMe();
      },
      child: Image.asset('images/ball$ballNumber.png'),
    );
  }

  void answerMe() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
}
