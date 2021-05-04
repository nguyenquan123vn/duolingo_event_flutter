import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:duolingo_event_app/global/widget/drawer.dart';
import 'package:flutter/material.dart';

import 'components/attendedEventList.dart';

class AttendedEventScreen extends StatefulWidget {
  @override
  _AttendedEventScreenState createState() => _AttendedEventScreenState();
}

class _AttendedEventScreenState extends State<AttendedEventScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();

    return SafeArea(
      child: Scaffold(
          key: _key,
          appBar: DuolingoAppBar(
              key: Key('avatar'),
              avatarOnpressed: () => _key.currentState.openDrawer()),
          drawer: DuolingoDrawer(),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'Attended events',
                    style: headerTextStyle,
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    height: 300,
                    child: AttendedEventList())
                ],
              ),
            ),
          )),
    );
  }
}
