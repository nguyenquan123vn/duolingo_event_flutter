import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/avatarContainer.dart';
import 'package:duolingo_event_app/global/widget/iconText.dart';

class Details extends StatelessWidget {
  const Details(
      {Key key, this.attending, this.language, this.attandeeProficiency})
      : super(key: key);

  final int attending;
  final String language;
  final String attandeeProficiency;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Details",
            style: headerTextStyle,
          ),
          Text(
            "$attending attending",
            style: defaultBoldWashTextStyle,
          ),
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
              ],
            ),
          ),
          IconText(
            label: "Hosted in $language",
            icon: Icons.messenger,
          ),
          IconText(
            label: attandeeProficiency,
            icon: Icons.people,
          ),
        ],
      ),
    );
  }
}
