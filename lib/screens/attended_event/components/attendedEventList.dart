import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';
import 'attendedEventTile.dart';

class AttendedEventList extends StatefulWidget {
  @override
  _AttendedEventListState createState() => _AttendedEventListState();
}

class _AttendedEventListState extends State<AttendedEventList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DataService data = context.read<DataService>();
    final user = context.read<DuolingoUser>();

    return FutureBuilder(
        future: data.getEventsByUser(user.uid),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) =>
                    AttendedEventTile(event: snapshot.data[index]),
              );
            } else {
              return Center(
                  child: Column(
                children: [
                  Text(
                    'Looks like you have not attended any events yet !!',
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: 180,
                    child: Button(
                      label: 'Discover all events now !!',
                      type: 'WHITE',
                      onPressed: () => Navigator.of(context).pushNamed('/home'),
                    ),
                  )
                ],
              ));
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
