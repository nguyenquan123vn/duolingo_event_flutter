import 'package:flutter/material.dart';
import 'package:duolingo_event_app/screens/authentication/logIn.dart';
import 'package:duolingo_event_app/screens/authentication/signUp.dart';
import 'package:duolingo_event_app/screens/event_details/event_detail.dart';
import 'package:duolingo_event_app/screens/event_home/event_home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
