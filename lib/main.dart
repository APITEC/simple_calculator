import 'package:flutter/material.dart';
import 'dart:math';

//  void main() i s the entry point of our program.
// runApp() inflates the given widget and attaches it to the screen.
void main() => runApp(MyApp());

// Useful when the state of our widget will change. For example when adding two numbers that have not been defined yet.
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// State is the instantaneous configuration of an program's memory. It is in charge of storing and keeping track of things such as variables.
class _MyAppState extends State<MyApp> {
  // Defining and assigning variables.
  var firstNumber = 0;
  var secondNumber = 0;
  @override
  Widget build(BuildContext context) {
    // MaterialApp gives access to Material Design widgets.
    return MaterialApp(
      // Scaffold implements the basic material design visual layout structure. We are using three of its main building blocks: appBar, body and floatingActionButton.
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Simple Minded',

            // Gives the text custom styling. There are many options. We are using two.
            style: TextStyle(
              fontSize: 36,
              color: Colors.redAccent,
            ),
          ),
        ),
        // Column allows us to stack widgets side by side vertically.
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Row allows us to stack widgets side by side horizontally.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  // Instead of passing a static string to the Text widget, we dynamically pass one of the variables we defined above. Since we have assigned integers (whole numbers) to our variable, we must first convert it to a string.
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

          // onPressed is a parameter that requires an anonymous callback function (){}. Our logic will go inside of the {}. It will be activated when the FloatingActionButton is pressed.
          onPressed: () {
            // setState is the function that Flutter uses to update out layout. If setState is not called, out app state will change (variables) but our layout will not update.
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
