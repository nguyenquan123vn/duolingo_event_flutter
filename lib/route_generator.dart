import 'package:duolingo_event_app/screens/attended_event/attended_event_screen.dart';
import 'package:flutter/material.dart';
import 'screens/authentication/signUp.dart';
import 'screens/event_details/event_detail.dart';
import 'screens/event_home/event_home_screen.dart';
import 'screens/event_host/host_detail.dart';
import 'screens/event_host/apply_host_screen.dart';

class RouteGenerator {
  static const homePage = '/home';
  static const signUpPage = '/signup';
  static const loginPage = '/login';
  static const eventDetailPage = '/detail';
  static const hostDetail = '/host';
  static const applyHost = '/apply';
  static const attendedEvent = '/attended';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.signUpPage:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUp());
      case RouteGenerator.homePage:
        return MaterialPageRoute<dynamic>(
            builder: (_) => EventsScreen());
      case RouteGenerator.eventDetailPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => EventDetail(),
          settings: settings,
        );
      case RouteGenerator.hostDetail:
        return MaterialPageRoute<dynamic>(builder: (_) => HostDetail());
      case RouteGenerator.applyHost:
        return MaterialPageRoute<dynamic>(builder: (_) => ApplyHost());
      case RouteGenerator.attendedEvent:
        return MaterialPageRoute<dynamic>(builder: (_) => AttendedEventScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text('ERROR')),
      );
    });
  }
}
