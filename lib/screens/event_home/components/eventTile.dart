import 'package:duolingo_event_app/models/event.dart';
import 'package:flutter/material.dart';
import '../../../global/style.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    Key key,
    this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    int spotLeft = event.attendeeLimit - event.reservationCount;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        height: 130.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: defaultBackgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1.0, color: borderColor),
            boxShadow: [defaultShadow]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AvatarContainer(),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(event.startDate, style: defaultBoldWashTextStyle),
                      Text(event.title, style: defaultBoldTextStyle),
                      Text(event.attendeeProficiency, style: defaultTextStyle),
                      Text(
                          spotLeft != 0
                              ? spotLeft > 20
                                  ? "20+ spots left"
                                  : "$spotLeft spots left"
                              : "No spots left",
                          style: spotLeft != 0
                              ? whiteBtnTextStyle
                              : dangerTextStyle)
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62.0,
        width: 62.0,
        decoration: BoxDecoration(
            color: Color.fromRGBO(235, 236, 237, 1),
            borderRadius: BorderRadius.circular(50)));
  }
}
