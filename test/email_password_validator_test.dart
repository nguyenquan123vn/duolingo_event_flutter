import 'package:flutter_test/flutter_test.dart';
import 'package:duolingo_event_app/screens/authentication/components/input.dart';

void main() {

  test('Empty email return error string', () {
    var result = EmailPasswordFieldValidator.validate('');
    expect(result, 'This information should not be empty!');
  });
}
