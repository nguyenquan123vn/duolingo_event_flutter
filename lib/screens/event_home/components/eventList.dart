import 'package:duolingo_event_app/provider/eventFilter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/models/event.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';
import './eventTile.dart';

class EventList extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DataService data = context.read<DataService>();
    //Mock list of event data
    //  List<Event> event = [
    //   Event(
    //     attendeeLimit: 40,
    //     attendeeProficiency: 'INTERMEDIATE',
    //     description:
    //         'Join our Virtual gathering to practice your English conversation skills',
    //     duration: 120,
    //     eventId: 'a752feca-f301-44af-bda3-abbdc0557631',
    //     hostId: 681491525,
    //     language: 'Spanish',
    //     recurrencePattern: 'WEEKLY',
    //     reservationCount: 40,
    //     startDate: '1999-01-01 04:20:69',
    //     timeZone: 'Asia/Calcutta',
    //     title:
    //         '¡Hablemos Françpañol! ¡Alcanzando el siguiente nivel en conversación! 💃🤝🗼🔝',
    //     url:
    //         'https://s3-alpha-sig.figma.com/img/d800/2b3b/f29d70006d7bfc0cf4c53417befc3bfe?Expires=1618185600&Signature=SUnSqw6s7forrPh8NUz~bjTYS0iikn45l2v74Qvv0SB3cfGZtG1Jel3pEVmqJHMkPJRHefktXeQlotEkB5sIBzmrotCV5Kg3dg1vZw0X0lz~7CKVzcDnxhRkeIq-Ti-oYZ5rvUqymTHUev6xWorzgkAumXbDaaXudMxQtcVzaQNcuK32frYVpBBtflPrFW0FOp9kQBS4RCtHMbuBEg5z6rf0pBsxPxuJC4G2EH25uRAOw8Y~v-NyZdOobm78B5RURonGwp0M15z4accahUf-1-iyRvifrtwLpDzR6p~GMOHupFfmFzchOROxoyTmZQG-Xx18zXJ5KUtJlLPPUO2eQw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    //   ),
    //   Event(
    //     attendeeLimit: 100,
    //     attendeeProficiency: 'BEGINNER',
    //     description: 'Si estás aprendiendo español y tienes un',
    //     duration: 120,
    //     eventId: 'a752feca-f301-44af-bda3-abbdc0557631',
    //     hostId: 681491525,
    //     language: 'Brazil',
    //     recurrencePattern: 'WEEKLY',
    //     reservationCount: 92,
    //     startDate: '2000-02-02 69:96:69',
    //     timeZone: 'Asia/Calcutta',
    //     title:
    //         '[ONLINE / VIDEO CHAT free] Esperanto Conversations with funny Brazilians - Ĝis la fina venko! - Potigvara Esperanto-Asocio!',
    //     url:
    //         'https://s3-alpha-sig.figma.com/img/94a3/ecde/b4404c3a44f75e65dd68c43de7f6ab0d?Expires=1618185600&Signature=dhvS6QCB2pGUSChm9fOO7pwt31HoMAjLwp1nOWxZUDTb7vd7KqJIvu4YKktpX0kEaCDCi8O~BmaOl~eBoepYJ1Ur2-kvIz0WrZk2rgnGFfpNkHQNYAPPKyoIv3Z6V5vxTJZTDtVzZaXYYGgetYjfFZEY5NQdMc5-mW2vcWx77hqIZk-EoOqLdyM7lq4~RCLRL3~uZ3UaE3zqMKBuL6et8LdLnL58yKvb9~CAq-KDaMVZZjcVi8WbKWRe9nlBUq6KAR9Y4LP870FE5TZF-wW~~SfXhbf427IaJ6AN0XGjo~dMIQVU3bPPJjE2BhO6rw2FSr-1Cc-mpJme1iCZS9ftmg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    //   ),
    //   Event(
    //     attendeeLimit: 75,
    //     attendeeProficiency: 'ADVANCED',
    //     description: 'This Saturday we will be familiarizing ourselves',
    //     duration: 120,
    //     eventId: 'a752feca-f301-44af-bda3-abbdc0557631',
    //     hostId: 681491525,
    //     language: 'Chinese',
    //     recurrencePattern: 'WEEKLY',
    //     reservationCount: 50,
    //     startDate: '2021-12-12 99:99:99',
    //     timeZone: 'Asia/Calcutta',
    //     title: '学习🎉 Structured Chinese Language Course (for Advanced)',
    //     url:
    //         'https://s3-alpha-sig.figma.com/img/e511/d397/5e0263805dab1e0cc366fe997d747588?Expires=1618185600&Signature=hcrl9LP1bLlXnzV5fAQuxnqQM9bGyrXdH44-l~BpOu6vLpXbJDIsQQmjEN9qvyD-lvKsKfQ~C8Ub4wqmnKafKgmr5w388jqQhDb8e-Ywv9iY-F3l5x87LYPhVT9AufYQ3bU8CQUweEKhJgtcybIEGnm1YG4SbUvYr9T4sJbN9Lm6SbrUl35l4BKo52VUJzVIIx7oXvBsg1ZQJtbOOeOnwIoXbDYGVx~9sNzgIN5vXipblUbM9r9sewAa0hPsRaaHZLhJOE78iW64gPjNThodJYA6ST9p4u8k86e4Diij5Gk07y0fWMeBmQpYYmr8ZkoPPLtTYBJu5KZ6ZtRoaBWAqA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    //   ),
    //   Event(
    //     attendeeLimit: 95,
    //     attendeeProficiency: 'ADVANCED',
    //     description: 'Fair Dinkum Aussie - Learn Australian English',
    //     duration: 120,
    //     eventId: 'a752feca-f301-44af-bda3-abbdc0557631',
    //     hostId: 681491525,
    //     language: 'France',
    //     recurrencePattern: 'WEEKLY',
    //     reservationCount: 80,
    //     startDate: '2021-12-12 99:99:99',
    //     timeZone: 'Asia/Calcutta',
    //     title: 'Fair Dinkum Aussie - Learn Australian English',
    //     url:
    //         'https://s3-alpha-sig.figma.com/img/b34a/0e6b/d1714777ab4c0d633025039a7023eaab?Expires=1618185600&Signature=BQF2VKUX0KPjdU-f-zj4qf~ydzaH7DinGqPvqlI-Bm0uUlWNufD0pRYSCseKqTXdVJ2DERVfhsMFBUTdJ2QvqkoS4V4ke-lwkifjHKT2wL4IXJeizhbL7EVEr1GB5~PQt6curyrbR~lJPnRFU9Bg3n34fat6ralK~7fdQ-WLviM6HVFhfkOAxVOmCG9E~esotxLB9viGW0lEfVfn8Gpz9f70qfPgIMFUl1QVmpd4qsSqxlyMySc~1Kw7lQoCNBy35piObDbFdkMgb5IGxQ0-aCEBp6RA2RwhjTHMrBuydc-gbb4Asww-pyIqCmmMCl3eEYfiik~Z6RKVhWotT59vlQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    //   ),
    //   Event(
    //     attendeeLimit: 1000,
    //     attendeeProficiency: 'ADVANCED',
    //     description: 'This Saturday we will be familiarizing ourselves',
    //     duration: 120,
    //     eventId: 'a752feca-f301-44af-bda3-abbdc0557631',
    //     hostId: 681491525,
    //     language: 'France',
    //     recurrencePattern: 'WEEKLY',
    //     reservationCount: 998,
    //     startDate: '2021-12-12 99:99:99',
    //     timeZone: 'Asia/Calcutta',
    //     title:
    //         'Let\'s speak in Spanglish! Reaching the next level in conversation! 💃🤝🗽🔝',
    //     url:
    //         'https://s3-alpha-sig.figma.com/img/32b7/ab76/36df429048a5e1a1162b9781546aa022?Expires=1618185600&Signature=IEQwCryKAYQbE2X6byjDe3cbLVroWqohLC9ZksosCpYGgRi3CZ57UI7MK7lQzKhnfrr7oCDJrUJNhANHyqLGEBnQZcMZ1kvFWwOKTRi5Y-zVYe37Ywa0dMiw4nH6AM2Opob8H3tXB8TU1RypjxjLqPX-uxQi3PWBueG0ktFseSMd-BrxUKGoX6Cu5kmLen9OcuhAvtmcqQhUtBhuwLFnGe8v8Z-5~Yco59Tz4MJ4s7ouPIbIQX1pD8BSJshZZdAO6NCh4OyAInUs3v4BCdm1sAY1SPo9ZmVM036Jen4aBnNDg4FvzS604mBTdNVWOWGm~~-mkEiKdRIQYDg6O1cVmg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    //   ),
    //   Event(
    //     attendeeLimit: 100,
    //     attendeeProficiency: 'INTERMEDIATE',
    //     description:
    //         'Join our Virtual gathering to practice your English conversation skills',
    //     duration: 120,
    //     eventId: 'a752feca-f301-44af-bda3-abbdc0557631',
    //     hostId: 681491525,
    //     language: 'English',
    //     recurrencePattern: 'WEEKLY',
    //     reservationCount: 100,
    //     startDate: '1999-01-01 04:20:69',
    //     timeZone: 'Asia/Calcutta',
    //     title:
    //         '¡Tutoría y asistencia con deberes de inglés y español en línea y sin costo!',
    //     url:
    //         'https://s3-alpha-sig.figma.com/img/c88f/0011/e7c353a0d55041457cdc02dfb5941b0e?Expires=1618185600&Signature=SS9E7r0BlUIzKvsKot9oo5og3p~Q8OhZMWNOB74q0ZVSbgq0Y1MdfW1uDuD0wIBNo6~TlXhHYs8rv4CaDXRMr4kgHS8ss2KlG1NU9cjCzc0ae7Gt15EKuNWlZENsS35efNGtLOAjGxNlzi4GvcfwnvmbJ21BMylHgf-jV3lRcXYnU~f1ObvLML4~V1jn5jVEHaZSdHuxAWtScjo4wd4cPHrF-9C5xrGtrqacy0BFnINOpScXq9vXwe1mBTyZ8crd~WRE0YWX05lOrlYqa9AQloT~VOG-WEkQK5QA8UxvroxHhNcxbgTNtqhDMWKEwZJovFgf4AopfiZuMkpAYZTqlw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    //   ),
    // ];
    //
    EventFilter eventFilter = context.read<EventFilter>();

    return StreamBuilder(
        stream: data.getEventsByFilter(
            eventFilter.selectedLanguage, eventFilter.selectedProficiency),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.isEmpty) {
              return Center(
                child: Text("No event found"),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) =>
                    EventTile(event: snapshot.data[index]),
              );
            }
          } else {
            Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
