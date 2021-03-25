import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionIndex;
  final String questionText;
  Question(this.questionIndex, this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        '$questionIndex. $questionText',
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
