import 'package:duolingo_event_app/models/event.dart';
import 'package:flutter/material.dart';
import 'eventTile.dart';

class EventList extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    //Mock list of event data
    final List<Event> events = [
      Event(
          attendeeLimit: 40,
          attendeeProficiency: "INTERMEDIATE",
          description:
              "Join our Virtual gathering to practice your English conversation skills",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "English",
          recurrencePattern: "WEEKLY",
          reservationCount: 40,
          startDate: DateTime.now().toString(),
          timeZone: "Asia/Calcutta",
          title: "Virtual English Practice (Intermediate & Advance)"),
      Event(
          attendeeLimit: 100,
          attendeeProficiency: "BEGINNER",
          description: "Si estás aprendiendo español y tienes un",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "Spanish",
          recurrencePattern: "WEEKLY",
          reservationCount: 92,
          startDate: DateTime.now().toString(),
          timeZone: "Asia/Calcutta",
          title: "Fiesta de Juegos entre Amigos"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "France",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: DateTime.now().toString(),
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "Germany",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: DateTime.now().toString(),
          timeZone: "Asia/Calcutta",
          title: "Welcome germany leaners <3"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "France",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: DateTime.now().toString(),
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 145,
          attendeeProficiency: "BEGINNER",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "Spanish",
          recurrencePattern: "WEEKLY",
          reservationCount: 90,
          startDate: DateTime.now().toString(),
          timeZone: "Asia/Calcutta",
          title: "Spanish for beginner, attend now !!!"),
    ];

    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventTile(event: events[index]);
      },
    );
  }
}
