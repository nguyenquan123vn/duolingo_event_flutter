import 'package:duolingo_event_app/global/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:duolingo_event_app/models/event.dart';
import 'components/contents.dart';

class EventDetail extends StatefulWidget {
  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    Event event = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: DuolingoAppBar(
            avatarOnpressed: () => _key.currentState.openDrawer()),
        drawer: DuolingoDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.of(context).pushNamed('/home'),
                    child: Text(
                      "EVENTS HOME",
                      style: whiteBtnTextStyle,
                      key: Key('home_button'),
                    ),
                  ),
                  Text(
                    "\t\t/\t\tONLINE EVENT",
                    style: disabledBtnTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Content(),
            ],
          ),
        ),
      ),
    );
  }
}
