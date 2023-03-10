import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key key}) : super(key: key);
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
