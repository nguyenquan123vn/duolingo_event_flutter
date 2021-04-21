import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:duolingo_event_app/service/authentication/firebase_auth_service.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Duolingo App login by email and password', () {
    AuthService auth;
    Stream<DuolingoUser> onAuthStateChanged;

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    setUp(() {
      auth = FirebaseAuthService();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('check flutter driver health', () async {
      final health = await driver.checkHealth();
      expect(health.status, HealthStatus.ok);
    });

    test('Login with email and password', () async {
      final emailField = find.byValueKey('email_field');
      await driver.enterText('quan@gmnail.com');
      expect(await driver.getText(emailField), 'quan@gmail.com');
    });
  });
}
