import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  //const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questionArray;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz({
      @required this.questionArray,
      @required this.answerQuestion,
      @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionArray[questionIndex]['questionText'],
        ),
        ...(questionArray[questionIndex]['answer'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
        Text('Lenotchka, poka!'),
      ],
    );
  }
}
