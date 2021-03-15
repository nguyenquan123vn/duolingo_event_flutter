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
          language: "en",
          recurrencePattern: "WEEKLY",
          reservationCount: 40,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Virtual English Practice (Intermediate & Advance)"),
      Event(
          attendeeLimit: 100,
          attendeeProficiency: "BEGINNER",
          description: "Si estás aprendiendo español y tienes un",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "es",
          recurrencePattern: "WEEKLY",
          reservationCount: 92,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Fiesta de Juegos entre Amigos"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 50,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
      Event(
          attendeeLimit: 75,
          attendeeProficiency: "ADVANCED",
          description: "This Saturday we will be familiarizing ourselves",
          duration: 120,
          eventId: "a752feca-f301-44af-bda3-abbdc0557631",
          hostId: 681491525,
          language: "fr",
          recurrencePattern: "WEEKLY",
          reservationCount: 74,
          startDate: "2021-03-13T17:00:00Z",
          timeZone: "Asia/Calcutta",
          title: "Advanced Reading & Conversation: Intro to Maryse Condé"),
    ];

    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventTile(event: events[index]);
      },
    );
  }
}