import 'package:flutter/material.dart';
import 'screens/authentication/logIn.dart';
import 'screens/authentication/signUp.dart';
import 'screens/event_details/event_detail.dart';
import 'screens/event_home/event_home_screen.dart';

class RouteGenerator {

  static const homePage = '/';
  static const signUpPage = '/signUp';
  static const logInPage = '/logIn';
  static const eventDetailPage = '/detail';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.signUpPage:
        return MaterialPageRoute<dynamic>(builder: (_) => SignUp());
      case RouteGenerator.logInPage:
        return MaterialPageRoute<dynamic>(builder: (_) => Login());
      case RouteGenerator.homePage:
        return MaterialPageRoute<dynamic>(builder: (_) => EventsScreen());
      case RouteGenerator.eventDetailPage:
        return MaterialPageRoute<dynamic>(builder: (_) => EventDetail());
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