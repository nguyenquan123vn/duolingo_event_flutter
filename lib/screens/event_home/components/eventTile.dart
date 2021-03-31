import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/avatar.dart';
import 'package:duolingo_event_app/models/event.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    Key key,
    this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    TextStyle switchTextStyle(spotLeft) {
      if (spotLeft <= 0) {
        return dangerTextStyle;
      } else if (spotLeft < 10 && spotLeft > 0) {
        return warnTextStyle;
      } else {
        return whiteBtnTextStyle;
      }
    }

    String switchText(spotLeft) {
      if (spotLeft > 0) {
        if (spotLeft > 20)
          return "20+ spots left";
        else
          return "$spotLeft spots left";
      } else
        return "No spots left";
    }

    String weekDate(weekDay) {
      switch (weekDay) {
        case 1:
          return 'Monday';
          break;
        case 2:
          return 'Tuesday';
          break;
        case 3:
          return 'Wednesday';
          break;
        case 4:
          return 'Thursday';
          break;
        case 5:
          return 'Friday';
          break;
        case 6:
          return 'Saturday';
          break;
        case 7:
          return 'Sunday';
          break;
        default:
          return null;
          break;
      }
    }

    String monthDate(month) {
      switch (month) {
        case 1:
          return 'JAN';
          break;
        case 2:
          return 'FEB';
          break;
        case 3:
          return 'MAR';
          break;
        case 4:
          return 'APR';
          break;
        case 5:
          return 'MAY';
          break;
        case 6:
          return 'JUN';
          break;
        case 7:
          return 'JUL';
          break;
        case 8:
          return 'AUG';
          break;
        case 9:
          return 'SEP';
          break;
        case 10:
          return 'OCT';
          break;
        case 11:
          return 'NOV';
          break;
        case 12:
          return 'DEC';
          break;
        default:
          return null;
          break;
      }
    }

    int spotLeft = event.attendeeLimit - event.reservationCount;

    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(
          '/detail',
          arguments: event,
        ),
        child: ListTile(
          leading: Avatar(
            url: event.url,
            size: 30.0,
          ),
          title: Container(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 10.0,
            ),
            child: Text(
              '${weekDate(event.date.weekday)}, ${monthDate(event.date.month)} ${event.date.day}\n${event.date.hour}:00 - ${event.date.hour + 1}:00',
              style: defaultBoldWashTextStyle,
            ),
          ),
          subtitle: Container(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              event.title,
              style: defaultBoldTextStyle,
            ),
          ),
          trailing: Text(
            switchText(spotLeft),
            style: switchTextStyle(spotLeft),
          ),
        ),
      ),
    );
  }
}
