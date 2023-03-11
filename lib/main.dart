import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    final questions = [
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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )
          // control + space_bar to cycle through suggested arguments
          ),
    );
  }
}
