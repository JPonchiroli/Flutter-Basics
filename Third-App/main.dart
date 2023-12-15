import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text(
        'Third App',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    ),
    body: Stack(children: [
      Image.network(
          'https://hermes.dio.me/articles/cover/3947f628-cb1f-4811-8ec9-e94426ed5faa.png',
          fit: BoxFit.contain),
      Center(
        child: Container(
          height: 100.0,
          width: 200.0,
          color: Colors.blue,
          child: TextButton(
            child: Text('Click Here!', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            onPressed: (){
              print("Flutter Is Cool!!");
            },
          ),
        ),
      ),
    ]),
  )));
}
