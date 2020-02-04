import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var firstNumber = 0;
  var secondNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Simple Minded',
            style: TextStyle(
              fontSize: 36,
              color: Colors.redAccent,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  firstNumber.toString(),
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '+',
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                  ),
                ),
                Text(
                  secondNumber.toString(),
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '=',
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                  ),
                ),
                Text(
                  (firstNumber + secondNumber).toString(),
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {
              firstNumber = Random().nextInt(11);
              secondNumber = Random().nextInt(11);
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
