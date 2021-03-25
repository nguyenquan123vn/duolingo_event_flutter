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
    //Fake event fetching
    Future<Event> _getEventDetails() async {
      await Future.delayed(Duration(seconds: 2));
      Event event = ModalRoute.of(context).settings.arguments;
      return event;
    }

    return SafeArea(
      child: Scaffold(
        appBar: CustomedAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).pushNamed('/'),
                        child: Text(
                          "EVENTS HOME",
                          style: whiteBtnTextStyle,
                        ),
                      ),
                      Text(
                        " / ONLINE EVENT",
                        style: disabledBtnTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  FutureBuilder(
                    future: _getEventDetails(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (!snapshot.hasData) {
                        return CircularProgressIndicator(strokeWidth: 7.0);
                      }
                      return ContentContainer(event: snapshot.data);
                    },
                  ),
                ],
              ),
            ),
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
    return Column(
      children: [
        Header(
          title: event.title,
          date: event.date,
          spotLeft: event.attendeeLimit - event.reservationCount,
        ),
        Divider(
          height: 50,
          thickness: 1,
        ),
        Details(
          attending: event.reservationCount,
          language: event.language,
          attandeeProficiency: event.attendeeProficiency,
        ),
        Divider(
          height: 50,
          thickness: 1,
        ),
        AboutEvent(
          description: event.description,
        ),
        Divider(
          height: 50,
          thickness: 1,
        ),
        AboutHost()
      ],
    );
  }
}
