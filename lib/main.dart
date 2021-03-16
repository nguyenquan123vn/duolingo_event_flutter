import 'package:duolingo_event_app/provider/eventFilter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<EventFilter>(create: (_) => EventFilter())
      ],
      child: MaterialApp(
          title: 'Duolingo Events Clone',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.onGenerateRoute),
    );
  }
}
