import 'package:flutter/material.dart';
import 'package:duolingo_event_app/models/querry.dart';
import './question.dart';
import './answer.dart';

class Controller extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int index;
  Controller(this.answerQuestion, this.index, this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(
          (questions[index]['question'] as Querry).index,
          (questions[index]['question'] as Querry).text,
        ),
        ...(questions[index]['answer'] as List<Querry>).map((answer) {
          return Answer(answerQuestion, answer.index, answer.text);
        }).toList(),
      ],
    ));
  }
}
