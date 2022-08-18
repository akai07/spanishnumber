// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_unnecessary_containers, sort_child_properties_last, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "trs",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];
  List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  String defaultText = "Spanish numbers";
  String numberText = "English numbers";

  void displaySNumber() {
    setState(() {
      defaultText = spanishNumbers[counter];
      numberText = numbers[counter];
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Spanish Numbers"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                numberText,
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: displaySNumber,
        child: Icon(Icons.adjust_sharp),
        backgroundColor: Colors.orangeAccent,
        splashColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
