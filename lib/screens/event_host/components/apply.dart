import 'package:duolingo_event_app/global/style.dart';
import 'package:flutter/material.dart';
import 'package:duolingo_event_app/models/query.dart';
import './question.dart';
import './answer.dart';

class Controller extends StatelessWidget {
  final Function answerQuestion;
  final Function nextQuestion;
  final Function previousQuestion;
  final List<Map<String, Object>> questions;
  final int index;
  Controller(this.answerQuestion, this.nextQuestion, this.previousQuestion,
      this.index, this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(
            (questions[index]['question'] as Query).index,
            (questions[index]['question'] as Query).text,
          ),
          ...(questions[index]['answer'] as List<Query>).map((answer) {
            return Answer(
              answerQuestion,
              answer.index,
              answer.text,
            );
          }).toList(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Actions(index: index, previousQuestion: previousQuestion, nextQuestion: nextQuestion),
          )
        ],
      ),
    );
  }
}


class Actions extends StatelessWidget {
  const Actions({
    Key key,
    @required this.index,
    @required this.previousQuestion,
    @required this.nextQuestion,
  }) : super(key: key);

  final int index;
  final Function previousQuestion;
  final Function nextQuestion;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      index > 0
          ? InkWell(
              onTap: () => previousQuestion(),
              child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: logoColor,
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(Icons.arrow_back_ios_rounded,
                        color: defaultBackgroundColor),
                  )))
          : Container(),
      SizedBox(width: 8.0),
      index > 0
          ? InkWell(
              onTap: () => nextQuestion(),
              child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: logoColor,
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: defaultBackgroundColor),
                  )))
          : Container()
    ]);
  }
}
