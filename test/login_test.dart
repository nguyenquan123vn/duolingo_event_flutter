import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:duolingo_event_app/service/authentication/firebase_auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  AuthService auth;

  setUp(() {
    auth = FirebaseAuthService();
  });
  test('Login with email and password', () async {
    DuolingoUser user =
        await auth.signInWithEmailAndPassword('quan@gmail.com', '123456');
    expect(user.uid, 'JCyxTRCdQ5aIOSDRbCniBvofeE13');
  });
}
