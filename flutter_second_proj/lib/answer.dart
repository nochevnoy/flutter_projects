// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({ Key? key }) : super(key: key);

  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(answerText),
            onPressed: selectHandler,
            ),
    );
  }
}
