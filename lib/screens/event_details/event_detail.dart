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

    Event event = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: DuolingoAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(
                      "EVENTS HOME",
                      style: whiteBtnTextStyle,
                    ),
                  ),
                  Text(
                    "\t\t/\t\tONLINE EVENT",
                    style: disabledBtnTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Content(event: event),
            ],
          ),
        ),
      ),
    );
  }
}
