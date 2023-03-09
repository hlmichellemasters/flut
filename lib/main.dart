import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['How', 'Why'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[_questionIndex]),
              ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuestion
                  // print('Answer 1 chosen')
                  ),
              ElevatedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('Answer 2 chosen')),
              ElevatedButton(
                  child: Text('Answer 3'),
                  onPressed: () => print('Answer 3 chosen')),
              // pass function (answerQuestion) without parentheses after
              // to not call right away and instead pass the function (pointer)
            ],
          )
          // control + space_bar to cycle through suggested arguments
          ),
    );
  }
}
