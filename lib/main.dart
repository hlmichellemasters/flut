import 'package:flutter/material.dart';

import './quiz.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'How?',
      'answers': ['Mushies', 'Aya', 'D']
    },
    {
      'questionText': 'Why?',
      'answers': ['Sad', 'Mad', 'Glad']
    },
    {
      'questionText': 'When',
      'answers': ['Now', '2 Weeks', '2 Months']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result()
          // control + space_bar to cycle through suggested arguments
          ),
    );
  }
}
