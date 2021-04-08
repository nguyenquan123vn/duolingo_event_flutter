import 'package:duolingo_event_app/global/widget/drawer.dart';
import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'components/dropdownBar.dart';
import 'components/eventList.dart';
import 'package:provider/provider.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({
    Key key,
  }) : super(key: key);
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    final user = context.read<DuolingoUser>();

    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: DuolingoAppBar(
            avatarOnpressed: () => _key.currentState.openDrawer()),
        drawer: DuolingoDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 10.0,
          ),
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
/*
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
*/
                SizedBox(height: 10.0),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: EventList(),
                  ),
                ),
                SizedBox(height: 10.0),
                if (user != null)
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 140,
                          child: Text(
                            'Want to start hosting your own event?',
                            style: defaultBoldTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: EdgeInsets.all(10.0),
                          child: Button(
                            label: 'APPLY TO HOST',
                            type: 'WHITE',
                            onPressed: () =>
                                Navigator.of(context).pushNamed('/apply'),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
