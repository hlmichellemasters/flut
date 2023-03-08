import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print('Answer chosen!')
    }

    var questions = ['How', 'Why'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text('The question!'),
              ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion()),
              ElevatedButton(child: Text('Answer 2'), onPressed: answerQuestion()),
              ElevatedButton(child: Text('Answer 3'), onPressed: answerQuestion()),
            ],
          )
          // control + space_bar to cycle through suggested arguments
          ),
    );
  }
}
