import 'package:flutter_test/flutter_test.dart';
import 'package:duolingo_event_app/screens/authentication/components/validator.dart';

void main() {
  group('validate', () {
    test('Empty username return error string', () {
      var username = EmailPasswordFieldValidator.usernameValidate('');
      expect(username, 'Please enter atleast 4 characters.');
    });

    test('An username shorter than 4 characters return error string', () {
      var username = EmailPasswordFieldValidator.usernameValidate('abc');
      expect(username, 'Please enter atleast 4 characters.');
    });

    test('An username contains spaces return error string', () {
      var username =
          EmailPasswordFieldValidator.usernameValidate('test user name');
      expect(username, 'Your user name must not contains space.');
    });

    test('An username contains special characters return no error', () {
      var username =
          EmailPasswordFieldValidator.usernameValidate('__Du0ling0__');
      expect(username, null);
    });

    test('Empty email return error string', () {
      var email = EmailPasswordFieldValidator.emailValidate('');
      expect(email, 'Your email should not be empty!');
    });

    test('An email that doesnt have @ return error string', () {
      var email =
          EmailPasswordFieldValidator.emailValidate('duolingoatgmail.com');
      expect(email, 'Please enter a valid email address.');
    });

    test('An email that doesnt have dot domain return error string', () {
      var email =
          EmailPasswordFieldValidator.emailValidate('duolingo@gmailcom');
      expect(email, 'Please enter a valid email address.');
    });

    test('An email that contains special characters return error string', () {
      var email =
          EmailPasswordFieldValidator.emailValidate('du-li?go@gmail*com');
      expect(email, 'Please enter a valid email address.');
    });

    test('An email that contains @ and . return no error', () {
      var email =
          EmailPasswordFieldValidator.emailValidate('duolingo@somewhere.com');
      expect(email, null);
    });

    test('Empty password return error string', () {
      var password = EmailPasswordFieldValidator.passwordValidate('');
      expect(password, 'Your password should not be empty!');
    });

    test('A password shorter than 6 characters return error string', () {
      var password = EmailPasswordFieldValidator.passwordValidate('12345');
      expect(password, 'Password must atleast 6 characters.');
    });

    test(
        'A password contains spaces, special characters, upperCase return no error',
        () {
      var password = EmailPasswordFieldValidator.passwordValidate(
          'This psswd 1S c0mp|!C@ted.');
      expect(password, null);
    });
  });
}
