import 'package:flutter/material.dart';
import 'route_generator.dart';
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
      initialRoute: '/detail',
      onGenerateRoute: RouteGenerator.onGenerateRoute
    );
  }
}
