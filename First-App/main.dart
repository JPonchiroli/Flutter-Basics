import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: Center(
        child: Text('Hello World', style: TextStyle(
          color: Colors.red,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ), ),
      ),
    )
  ));
}
