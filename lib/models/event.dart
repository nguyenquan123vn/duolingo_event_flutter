import 'package:flutter/foundation.dart';

class Event {
  final int attendeeLimit;
  final String attendeeProficiency;
  final String description;
  final int duration;
  final String eventId;
  final int hostId;
  final String language;
  final String recurrencePattern;
  final int reservationCount;
  final String startDate;
  final String timeZone;
  final String title;
  final String url;

  DateTime date;
  Event({
    @required this.attendeeLimit,
    @required this.attendeeProficiency,
    @required this.description,
    @required this.duration,
    @required this.eventId,
    @required this.hostId,
    @required this.language,
    @required this.recurrencePattern,
    @required this.reservationCount,
    @required this.startDate,
    @required this.timeZone,
    @required this.title,
    @required this.url,
  }) {
    date = DateTime.parse(startDate);
  }
}
