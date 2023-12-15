import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text(
        'Second App',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.amber,
    ),
    body: Container(
        color: Colors.black,
        height: 250.0,
        width: 250.0,
        child: Row(    
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Container(height: 75.0, width: 50.0, color: Colors.blue),
          Container(height: 50.0, width: 50.0, color: Colors.red),
            Container(height: 25.0, width: 50.0, color: Colors.green),
        ])),
  )));
}
