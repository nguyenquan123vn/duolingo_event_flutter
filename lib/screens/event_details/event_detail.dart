import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:flutter/material.dart';
import '../../global/style.dart';
import 'components/aboutEvent.dart';
import 'components/aboutHost.dart';
import 'components/details.dart';
import 'components/header.dart';

class EventDetail extends StatefulWidget {
  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomedAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () => Navigator.of(context).pushNamed('/'), //Tap to go to homescreen
                            child: Text("EVENTS HOME", style: whiteBtnTextStyle)),
                        Text(" / ONLINE EVENT", style: disabledBtnTextStyle),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Header(),
                    Divider(height: 50, thickness: 1),
                    Details(),
                    Divider(height: 50, thickness: 1),
                    AboutEvent(),
                    Divider(height: 50, thickness: 1),
                    AboutHost()
                  ],
                ),
              ),
            ),
          )),
    );
  }
}





