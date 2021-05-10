import 'package:duolingo_event_app/provider/eventFilter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:duolingo_event_app/models/event.dart';
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
    EventFilter eventFilter = context.read<EventFilter>();

    return StreamBuilder(
        stream: data.getEventsByFilter(
          eventFilter.selectedLanguage,
          eventFilter.selectedProficiency,
        ),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.isNotEmpty) {
              return ListView.builder(
                key: Key('event_list'),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) => EventTile(
                    event: snapshot.data[index], key: Key('event_$index')),
              );
            } else {
              return Center(
                child: Text(
                  'No event found!',
                ),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
