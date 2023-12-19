import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicação', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 200.0,
            child: Column(
              children: [
                TextField(
                  controller: nomeController,
                  decoration: InputDecoration(labelText: 'Informe seu Nome'),
                ),
                TextField(
                  controller: idadeController,
                  decoration: InputDecoration(labelText: 'Informe sua Idade'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    String nome = nomeController.text;
                    String idade = idadeController.text;

                    print('Nome Digitado: $nome');
                    print('Idade Digitada: $idade');
                  },
                  child: Text('Imprimir no Console', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
