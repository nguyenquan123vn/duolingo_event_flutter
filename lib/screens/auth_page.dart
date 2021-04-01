import 'package:flutter/material.dart';
import 'package:duolingo_event_app/service/authentication_service.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/screens/authentication/login.dart';
import 'package:duolingo_event_app/screens/event_home/event_home_screen.dart';

/// Builds the signed-in or non signed-in UI, depending on the user snapshot.
/// This widget should be below the [MaterialApp].
/// An [AuthWidgetBuilder] ancestor is required for this widget to work.
/// Note: this class used to be called [LandingPage].
class AuthWidget extends StatelessWidget {
  const AuthWidget({Key key, @required this.userSnapshot}) : super(key: key);
  final AsyncSnapshot<DuolingoUser> userSnapshot;

  @override
  Widget build(BuildContext context) {
    if (userSnapshot.connectionState == ConnectionState.active) {
      return userSnapshot.hasData ? EventsScreen() : Login();
    }
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
