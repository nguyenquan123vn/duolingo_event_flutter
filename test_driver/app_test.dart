import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Testing function: ', () {
    //AuthService auth;
    //Stream<DuolingoUser> onAuthStateChanged;

    FlutterDriver driver;

    final emailField = find.byValueKey('email_field');
    final passwordField = find.byValueKey('password_field');
    final loginBtn = find.byValueKey('login_button');

    final logoutBtn = find.byValueKey('logout');
    final avatar = find.byValueKey('avatar');

    final signUp = find.byValueKey('sign_up');
    final usernameSignUp = find.byValueKey('username_signup');
    final emailSignUp = find.byValueKey('email_signup');
    final passwordSignUp = find.byValueKey('password_signup');
    final signUpBtn = find.byValueKey('signup_button');

    final eventList = find.byValueKey('event_list');
    final eventIndex = find.byValueKey('event_1');
    final homeBtn = find.byValueKey('home_button');

    final attendedBtn = find.byValueKey('attended_btn');
    final reverseBtn = find.byValueKey('reverse_spot_btn');

    final attendEventNav = find.byValueKey('attend_event_nav');
    final attendedTitle = find.byValueKey('attended_title');

    final attendedEvent = find.byValueKey('attended_0');
    final discoverBtn = find.byValueKey('discover_button');

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Check flutter driver health', () async {
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
      await (driver.waitFor(avatar));
      print('ok');
    });

    test('Logout', () async {
      await driver.tap(avatar);
      await driver.tap(logoutBtn);
      await driver.waitFor(emailField);
    });

    test('Create new account', () async {
      await driver.tap(signUp);
      await driver.waitFor(usernameSignUp);
      await driver.tap(usernameSignUp);
      await driver.enterText('quan');
      await driver.tap(emailSignUp);
      await driver.enterText('quan.test@gmail.com');
      await driver.tap(passwordSignUp);
      await driver.enterText('123456');
      await driver.tap(signUpBtn);
      await (driver.waitFor(avatar));
    });

    test('Event details', () async {
      await driver.waitFor(avatar);
      await driver.scrollUntilVisible(eventList, eventIndex, dyScroll: -30.0);
      await driver.tap(eventIndex);
      await driver.waitFor(homeBtn);
    });

    test('Attend event', () async {
      await driver.tap(reverseBtn);
      await driver.waitFor(attendedBtn);
    });

    test('Check attended events', () async {
      await driver.tap(homeBtn);
      await driver.waitFor(avatar);
      await driver.tap(avatar);
      await driver.waitFor(attendEventNav);
      await driver.tap(attendEventNav);
      await driver.waitFor(attendedTitle);
    });

    test('Leave an event', () async {
      await driver.tap(attendedEvent);
      await driver.tap(attendedBtn);
      await driver.tap(avatar);
      await driver.tap(attendEventNav);
      await driver.waitFor(discoverBtn);
    });

    test('Discover new events', () async {
      await driver.tap(discoverBtn);
      await driver.waitFor(eventList);
      await driver.scrollUntilVisible(eventList, eventIndex, dyScroll: -30.0);
    });
  });
}
