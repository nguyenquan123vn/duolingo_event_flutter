import 'package:flutter/material.dart';
import '../../../global/style.dart';

class EventTag extends StatelessWidget {
  const EventTag({
    Key key,
    this.title,
    this.proficiency,
    this.spotLeft,
    this.date,
    this.timeStart,
    this.timeEnd,
  }) : super(key: key);

  final String date;
  final String timeStart;
  final String timeEnd;
  final String title;
  final String proficiency;
  final String spotLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: defaultBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.0, color: borderColor),
          boxShadow: [defaultShadow]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AvatarContainer(),
            SizedBox(width: 16.0),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${date} - $timeStart - $timeEnd", style: defaultBoldWashTextStyle),
                  Text(title, style: defaultBoldTextStyle),
                  Text(proficiency, style: defaultTextStyle),
                  Text("$spotLeft spots left", style: defaultBoldTextStyle)
                ])
          ],
        ),
      ),
    );
  }
}

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62.0,
        width: 62.0,
        decoration: BoxDecoration(
            color: Color.fromRGBO(235, 236, 237, 1),
            borderRadius: BorderRadius.circular(50)));
  }
}
