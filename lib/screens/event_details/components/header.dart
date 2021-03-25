import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:duolingo_event_app/global/widget/iconText.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.title, this.date, this.spotLeft})
      : super(key: key);

  final String title;
  final DateTime date;
  final int spotLeft;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: headerTextStyle,
        ),
        SizedBox(height: 16.0),
        IconText(
          label:
              '${date.day}/${date.month}/${date.year} - ${date.hour}h${date.minute}',
          icon: Icons.watch_later,
        ),
        SizedBox(height: 16.0),
        IconText(
          label: "$spotLeft spots left",
          icon: Icons.person,
        ),
        SizedBox(height: 16.0),
        Button(
          label: "RESERVE SPOT",
          type: "PRIMARY",
        ),
      ],
    );
  }
}
