import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({ Key? key }) : super(key: key);
  final String QuestionText;

  Question(this.QuestionText); //конструктор

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2DBD3A),
      width: double.infinity,
      margin: EdgeInsets.all(55),
      child: Text(
        QuestionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
