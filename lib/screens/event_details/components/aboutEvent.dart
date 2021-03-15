import 'package:flutter/material.dart';
import '../../../global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';

class AboutEvent extends StatefulWidget {
  const AboutEvent({
    Key key,
    //this.description
  }) : super(key: key);

  //final String description

  @override
  _AboutEventState createState() => _AboutEventState();
}

class _AboutEventState extends State<AboutEvent> {
  bool isFullDescription = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("About the event", style: headerTextStyle),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
              child: isFullDescription == false
                  ? Text(
                      "Hola a Spanish Lovers 👋 !\n"
                      "Improve your spoken Spanish! You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at",
                      style: defaultParaStyle,
                      overflow: TextOverflow.clip,
                      maxLines: 4,
                      softWrap: true)
                  : Text(
                      "Hola a Spanish Lovers 👋 !\n"
                      "Improve your spoken Spanish! You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at",
                      style: defaultParaStyle),
            ),
            Button(
              label: "READ MORE",
              type: "PRIMARY",
              onPressed: () {
                return setState(() {
                  isFullDescription = !isFullDescription;
                });
              },
            ),
          ],
        ));
  }
}
