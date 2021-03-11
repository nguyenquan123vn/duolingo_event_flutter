import 'package:flutter/material.dart';
import '../../../global/style.dart';
import 'divider.dart';
import 'dropdownBar.dart';
import 'eventTag.dart';
import 'toggleBtn.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
      child: Container(
        child: Column(children: [
          Container(
              color: defaultBrandColor, width: double.infinity, height: 64.0),
          SizedBox(height: 16.0, width: 8.0),
          Container(
              width: double.infinity,
              height: 28.0,
              child: Center(
                  child:
                      Text("Duolingo Online Events", style: headerTextStyle))),
          SizedBox(height: 8.0, width: 8.0),
          DropdownBar(title: "ALL LANGUAGES"),
          SizedBox(height: 8.0, width: 8.0),
          DropdownBar(title: "ALL LEVELS"),
          SizedBox(height: 16.0, width: 16.0),
          Container(
              child: Row(
            children: [
              ToggleBtn(),
              SizedBox(width: 16.0),
              Text("Show available events only", style: defaultTextStyle)
            ],
          )),
          SizedBox(height: 16.0, width: 16.0),
          Divider(),
          SizedBox(height: 16.0, width: 8.0),
          Container(
              height: 416.0,
              width: double.infinity,
              child: Column(
                children: [
                  EventTag(
                      title: "New Class Added",
                      proficiency: "Beginner",
                      spotLeft: "30",
                      date: "THU, MAR 4",
                      timeStart: "5:00 PM",
                      timeEnd: "6:00 PM"),
                  SizedBox(height: 8.0, width: 8.0),
                  EventTag(
                      title: "New Class Added",
                      proficiency: "Beginner",
                      spotLeft: "30",
                      date: "THU, MAR 4",
                      timeStart: "5:00 PM",
                      timeEnd: "6:00 PM"),
                  SizedBox(height: 8.0, width: 8.0),
                  EventTag(
                      title: "New Class Added",
                      proficiency: "Beginner",
                      spotLeft: "30",
                      date: "THU, MAR 4",
                      timeStart: "5:00 PM",
                      timeEnd: "6:00 PM"),
                ],
              ))
        ]),
      ),
    );
  }
}
