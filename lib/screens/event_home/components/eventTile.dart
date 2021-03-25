import 'package:duolingo_event_app/global/widget/avatarContainer.dart';
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
    TextStyle switchTextStyle(spotLeft) {
      if (spotLeft == 0) {
        return dangerTextStyle;
      } else if (spotLeft < 10 && spotLeft > 0) {
        return warnTextStyle;
      } else {
        return whiteBtnTextStyle;
      }
    }

    String switchText(spotLeft) {
      return spotLeft != 0
          ? spotLeft > 20
              ? "20+ spots left"
              : "$spotLeft spots left"
          : "No spots left";
    }

    int spotLeft = event.attendeeLimit - event.reservationCount;

    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/detail', arguments: event), // Passing event object to event detail screen.
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
          height: 150.0,
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
                        Text('${event.date.day}/${event.date.month}/${event.date.year}', style: defaultBoldWashTextStyle),
                        Text(event.title, style: defaultBoldTextStyle),
                        Text(event.attendeeProficiency,
                            style: defaultTextStyle),
                        Text(switchText(spotLeft),
                            style: switchTextStyle(spotLeft))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
