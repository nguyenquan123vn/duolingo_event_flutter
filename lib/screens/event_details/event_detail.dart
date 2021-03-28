import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:duolingo_event_app/models/event.dart';
import 'components/aboutEvent.dart';
import 'components/aboutHost.dart';
import 'components/details.dart';
import 'components/header.dart';

class EventDetail extends StatefulWidget {
  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    Future<Event> _getEventDetails() async =>
        ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: CustomedAppBar(
          login: false,
          reference: true,
        ),
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
              FutureBuilder(
                future: _getEventDetails(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<dynamic> snapshot,
                ) =>
                    ContentContainer(event: snapshot.data),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
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
