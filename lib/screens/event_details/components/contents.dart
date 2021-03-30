import 'package:flutter/material.dart';
import 'package:duolingo_event_app/models/event.dart';
import './aboutEvent.dart';
import './aboutHost.dart';
import './details.dart';
import './header.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Header(
            title: event.title,
            date: event.date,
            spotLeft: event.attendeeLimit - event.reservationCount,
          ),
          Divider(
            height: 50.0,
            thickness: 1.0,
          ),
          Details(
            attending: event.reservationCount,
            language: event.language,
            attandeeProficiency: event.attendeeProficiency,
          ),
          Divider(
            height: 50.0,
            thickness: 1.0,
          ),
          AboutEvent(
            description: event.description,
          ),
          Divider(
            height: 50.0,
            thickness: 1.0,
          ),
          AboutHost(),
        ],
      ),
    );
  }
}