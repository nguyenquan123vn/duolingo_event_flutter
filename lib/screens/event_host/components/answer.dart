import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/widget/button.dart';

class Answer extends StatelessWidget {
  final String answerIndex;
  final String answerText;
  final Function selectHandler;
  Answer(this.selectHandler, this.answerIndex, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Button(
      label:
          (answerIndex == null) ? '$answerText' : '$answerIndex. $answerText',
      type: 'PRIMARY',
      onPressed: selectHandler,
    ));
  }
}
