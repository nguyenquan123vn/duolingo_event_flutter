import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Duolingo App login by email and password', () {
    //AuthService auth;
    //Stream<DuolingoUser> onAuthStateChanged;

    FlutterDriver driver;

    final emailField = find.byValueKey('email_field');
    final passwordField = find.byValueKey('password_field');
    final loginBtn = find.byValueKey('loginBtn');
    final duolingo_text = find.byValueKey('duolingo');

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    /*
    setUp(() {
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
      print('tap email');
      await driver.enterText('quan@gmnail.com');
      print('enter text');
      //await driver.waitForAbsent(find.text('quan@gmail.com'));
      print('ok');
      await driver.tap(passwordField);
      print('tap password');
      await driver.enterText('123456');
      print('enter password');
      await driver.tap(loginBtn);
      print('login');
      //expect(await driver.getText(duolingo_text), 'ｄｕｏｌｉｎｇｏ  ');
    }, timeout: Timeout(Duration(seconds: 10)));
  });
}
