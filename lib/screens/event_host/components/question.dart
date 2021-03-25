import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';

class Question extends StatelessWidget {
  final String questionIndex;
  final String questionText;
  Question(this.questionIndex, this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: (questionIndex == 'duolingo')
          ? Column(children: <Widget>[
              Text(
                'duolingo',
                style: logoTextStyle,
              ),
              Text(
                questionText,
                style: defaultBoldWashTextStyle,
                textAlign: TextAlign.center,
              ),
            ])
          : Text(
              '$questionIndex. $questionText',
              style: primaryBtnTextStyle,
              textAlign: TextAlign.center,
            ),
    );
  }
}
