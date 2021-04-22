import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Duolingo App login by email and password', () {
    //AuthService auth;
    //Stream<DuolingoUser> onAuthStateChanged;

    FlutterDriver driver;

    final emailField = find.byValueKey('email_field');
    final passwordField = find.byValueKey('password_field');
    final loginBtn = find.byValueKey('login_button');
    final duolingo_text = find.byValueKey('duolingo');

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    /*setUp(() {
      auth = FirebaseAuthService();
    });
    */

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });

    test('Login with email and password', () async {
      await driver.tap(emailField);
      await driver.enterText('quan@gmail.com');
      //await driver.waitForAbsent(find.text('quan@gmail.com'));
      await driver.tap(passwordField);
      await driver.enterText('123456');
      await driver.waitFor(find.text('123456'));
      print('enter password');
      await driver.tap(loginBtn);
      print('login');
    });
  });
}
