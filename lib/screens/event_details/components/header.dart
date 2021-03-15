import 'package:duolingo_event_app/global/widget/iconText.dart';
import 'package:flutter/material.dart';
import '../../../global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';


class Header extends StatelessWidget {
  const Header({
    Key key,
    //this.title,
    //this.date,
    //this.spotLeft
  }) : super(key: key);

  //final String title;
  //final String date;
  //final int spotLeft;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Duolingo Online Events", style: headerTextStyle),
        SizedBox(height: 16.0),
        IconText(
            label: "Thursday March 4 at 9:30 PM to 10:30 PM GMT+07",
            icon: Icons.watch_later),
        SizedBox(height: 16.0),
        IconText(label: "22 spots left", icon: Icons.person),
        SizedBox(height: 16.0),
        Button(label: "RESERVE SPOT", type: "PRIMARY"),
      ],
    );
  }
}