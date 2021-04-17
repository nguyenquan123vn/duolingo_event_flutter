// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:duolingo_event_app/main.dart';
import 'package:duolingo_event_app/screens/authentication/login.dart';
import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:duolingo_event_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:mockito/mockito.dart';

import 'mock.dart';

void main() {
  MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  testWidgets('Login Page test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.text('Login'), findsOneWidget);
  });
  testWidgets('Login with Google', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    await tester.tap(find.text('Google'));
    await tester.pump();
  });
}
