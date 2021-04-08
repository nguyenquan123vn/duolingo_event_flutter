import 'package:flutter/foundation.dart';

class Event {
  final int attendeeLimit;
  final String attendeeProficiency;
  final String description;
  final int duration;
  final String eventId;
  final String hostId;
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

  factory Event.fromMap(Map<String, dynamic> json) {
    return Event(
        attendeeLimit: json['attendeeLimit'],
        attendeeProficiency: json['attendeeProficiency'],
        description: json['description'],
        duration: json['duration'],
        eventId: json['eventId'],
        hostId: json['hostId'],
        language: json['language'],
        recurrencePattern: json['recurrencePattern'],
        reservationCount: json['reservationCount'],
        startDate: json['startDate'],
        timeZone: json['timeZone'],
        title: json['title'],
        url: json['url']);
  }

  Map<String, dynamic> toJson() => {
        'attendeeLimit': attendeeLimit,
        'attendeeProficiency': attendeeProficiency,
        'description': description,
        'duration': duration,
        'eventId': eventId,
        'hostId': hostId,
        'language': language,
        'recurrencePattern': recurrencePattern,
        'reservationCount': reservationCount,
        'startDate': startDate,
        'timeZone': timeZone,
        'title': title,
        'url': url
      };
}
