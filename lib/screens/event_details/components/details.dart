import 'package:duolingo_event_app/global/widget/avatarContainer.dart';
import 'package:duolingo_event_app/global/widget/iconText.dart';
import 'package:flutter/material.dart';
import '../../../global/style.dart';

class Details extends StatelessWidget {
  const Details({
    Key key,
    //this.attending,
    //this.language,
    //this.attandeeProficiency
  }) : super(key: key);

  //final int attending;
  //final int language;
  //final attandeeProficiency;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Details", style: headerTextStyle),
            Text("24 attending", style: defaultBoldWashTextStyle),
            Container(
              width: 258.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AvatarContainer(),
                    AvatarContainer(),
                    AvatarContainer(),
                    AvatarContainer(),
                    AvatarContainer(),
                  ]),
            ),
            IconText(label: "Hosted in Spanish", icon: Icons.messenger),
            IconText(label: "Beginner", icon: Icons.people),
          ]),
    );
  }
}