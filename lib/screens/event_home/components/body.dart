import 'package:flutter/material.dart';
import '../../../global/style.dart';
import 'dropdownBar.dart';
import 'eventList.dart';
import 'toggleBtn.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // return EventList();
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Container(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: DropdownBar(type: "LANGUAGE")),
              SizedBox(width: 8.0),
              Expanded(child: DropdownBar(type: "PROFICIENCY")),
            ],
          ),
          SizedBox(height: 16.0),
          Container(
              child: Row(
            children: [
              ToggleBtn(),
              SizedBox(width: 16.0),
              Text("Show available events only", style: defaultTextStyle)
            ],
          )),
          SizedBox(height: 16.0),
          Expanded(
            child: Container(width: double.infinity, child: EventList()),
          )
        ]),
      ),
    );
  }
}
