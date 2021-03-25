import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import './dropdownBar.dart';
import './eventList.dart';
import './toggleBtn.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: DropdownBar(type: "LANGUAGE"),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: DropdownBar(type: "PROFICIENCY"),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              child: Row(
                children: <Widget>[
                  ToggleBtn(),
                  SizedBox(width: 16.0),
                  Text(
                    "Show available events only",
                    style: defaultTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                width: double.infinity,
                child: EventList(),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Want to start hosting your own event?',
                    style: defaultBoldTextStyle,
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(20),
                    child: Button(
                      label: 'APPLY TO HOST',
                      type: 'WHITE',
                      onPressed: () => Navigator.of(context).pushNamed('/host'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
