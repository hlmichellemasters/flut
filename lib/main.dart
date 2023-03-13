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
      'questionText': 'Mood?',
      'answers': [
        {'text': 'Terrible', 'score': 0},
        {'text': 'Okay', 'score': 5},
        {'text': 'Awesome', 'score': 10},
      ]
    },
    {
      'questionText': 'What?',
      'answers': [
        {'text': 'Sad', 'score': 0},
        {'text': 'Mad', 'score': 5},
        {'text': 'Glad', 'score': 10},
      ]
    },
    {
      'questionText': 'How long?',
      'answers': [
        {'text': 'Now', 'score': 0},
        {'text': '2 Hours', 'score': 5},
        {'text': 'All Day', 'score': 10},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

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
