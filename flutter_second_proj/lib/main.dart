import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() => runApp(MyMainApp());

class MyMainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO:вф implement createState
    return _MyMainAppState();
  }
}

class _MyMainAppState extends State<MyMainApp> {
  var _questionIndex = 0;

  final _questionArray = [
    {
      'questionText': 'Who\'s ur daddy?',
      'answer': ['onew1', 'two1', 'ttt1'],
    },
    {
      'questionText': 'Who\'s ur daddy2?',
      'answer': ['onew2', 'two2', 'ttt2'],
    },
    {
      'questionText': 'Who\'s ur daddy3?',
      'answer': ['onew3', 'two3', 'ttt3'],
    },
  ];

  void _myNewFunction() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first madafaka!'),
        ),
        body: _questionIndex < _questionArray.length
            ? Quiz(answerQuestion: _myNewFunction,questionIndex: _questionIndex,questionArray: _questionArray,)
            : Center(
                child: Text('VSE!'),
              ),
      ),
    );
  }
}
