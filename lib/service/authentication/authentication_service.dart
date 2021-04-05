import 'dart:async';
import 'package:meta/meta.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';

abstract class AuthService {
  Future<DuolingoUser> currentUser();
  Future<DuolingoUser> signInWithEmailAndPassword(
      String email, String password);
  Future<DuolingoUser> createUserWithEmailAndPassword(
      String email, String password);
  Future<void> sendPasswordResetEmail(String email);
  Future<DuolingoUser> signInWithEmailAndLink({String email, String link});
  bool isSignInWithEmailLink(String link);
  Future<void> sendSignInWithEmailLink({
    @required String email,
    @required String url,
    @required bool handleCodeInApp,
    @required String iOSBundleId,
    @required String androidPackageName,
    @required bool androidInstallApp,
    @required String androidMinimumVersion,
  });
  Future<DuolingoUser> signInWithGoogle();
  Future<DuolingoUser> signInWithFacebook();
  Future<void> signOut();
  Stream<DuolingoUser> get onAuthStateChanged;
  void dispose();
}
