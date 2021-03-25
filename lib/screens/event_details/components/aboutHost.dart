import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/avatarContainer.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import './messageHostModal.dart';

class AboutHost extends StatelessWidget {
  const AboutHost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About the Host",
            style: headerTextStyle,
          ),
          SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarContainer(),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jackson",
                        style: headerTextStyle,
                      ),
                      Text(
                          "We’re group of language enthusiasts. We speak France, Spanish, English. We’re excited to help you improve your language skills.",
                          style: defaultParaStyle)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Button(
            label: "CONTACT HOST",
            type: "WHITE",
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => MessageHostModal(),
            ),
          ),
        ],
      ),
    );
  }
}
