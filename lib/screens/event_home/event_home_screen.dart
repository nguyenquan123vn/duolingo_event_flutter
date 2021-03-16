import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomedAppBar(),
        body: Body()
    ));
  }
}
