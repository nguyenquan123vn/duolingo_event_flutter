import 'package:duolingo_event_app/service/authentication/firebase_auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';

void main() {
  final auth = FirebaseAuthService();

  //test 1
  test('Login with email and password', () async {
    DuolingoUser user =
        await auth.signInWithEmailAndPassword('quan@gmail.com', '123456');
    expect(user.uid, 'JCyxTRCdQ5aIOSDRbCniBvofeE13');
  });

  //test 2
  test('Login with', () async {});
}
