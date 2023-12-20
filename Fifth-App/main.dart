import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  final TextEditingController currentYearController = TextEditingController();
  final TextEditingController yearBornController = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fifth App', style: TextStyle(color: Colors.white,)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300.0,
            height: 300.0,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Text('Age Calculator', style: TextStyle(fontSize: 20.0)),
                TextField(
                  controller: currentYearController,
                  decoration: InputDecoration(labelText: 'Enter the year we are in')
                ),
                TextField(
                  controller: yearBornController,
                  decoration: InputDecoration(labelText: 'Enter the year you were born')
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: (){
                    int currentYear = int.tryParse(currentYearController.text) ?? 0;
                    int yearBorn = int.tryParse(yearBornController.text) ?? 0;
                    
                    int currentAge = currentYear - yearBorn;
                    
                    print('Current Age: $currentAge');
                   },
                  child: Text('Calculate Age', style: TextStyle(color: Colors.black))
                ),
              ]
            ),
          ),
        ),
      )
    );
  }
}