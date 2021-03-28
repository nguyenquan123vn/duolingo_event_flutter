import 'package:flutter/material.dart';
import 'screens/authentication/login.dart';
import 'screens/authentication/signUp.dart';
import 'screens/event_details/event_detail.dart';
import 'screens/event_home/event_home_screen.dart';
import 'screens/event_host/host_detail.dart';
import 'screens/event_host/apply_host_screen.dart';

class RouteGenerator {

  static const homePage = '/';
  static const signUpPage = '/signup';
  static const loginPage = '/login';
  static const eventDetailPage = '/detail';
  static const hostDetail = '/host';
  static const applyHost = '/apply';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case RouteGenerator.signUpPage:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUp());
      case RouteGenerator.loginPage:
        return MaterialPageRoute<dynamic>(builder: (_) => Login());
      case RouteGenerator.homePage:
        return MaterialPageRoute<dynamic>(builder: (_) => EventsScreen());
      case RouteGenerator.eventDetailPage:
        return MaterialPageRoute<dynamic>(builder: (_) => EventDetail(), settings: settings);
      case RouteGenerator.hostDetail:
        return MaterialPageRoute<dynamic>(builder: (_) => HostDetail());
      case RouteGenerator.applyHost:
        return MaterialPageRoute<dynamic>(builder: (_) => ApplyHost());
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