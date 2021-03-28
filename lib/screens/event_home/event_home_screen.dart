import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class EventsScreen extends StatelessWidget {
  final bool login = false; // Set this to true to change to logged-in state
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomedAppBar(
          login: login,
          reference: true,
        ),
        body: Body(login: login),
      ),
    );
  }
}
