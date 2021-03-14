import 'package:flutter/material.dart';
import 'screens/authentication/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duolingo Events Clone',
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
