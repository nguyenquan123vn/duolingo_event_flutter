import 'package:flutter/material.dart';
import 'screens/event_detail.dart';

import 'logIn.dart';

void main() {
  //runApp(MyApp());
  runApp(MaterialApp(
    debugShowCheckedModeBanner : false,
    home: logIn(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
