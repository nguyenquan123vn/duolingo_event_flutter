import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';

@immutable
class DuolingoUser {
  const DuolingoUser({
    @required this.uid,
    this.email,
    this.photoURL,
    this.displayName,
  }) : assert(uid != null, 'User can only be created with a non-null uid');

  final String uid;
  final String email;
  final String photoURL;
  final String displayName;

  factory DuolingoUser.fromFirebaseUser(User user) {
    if (user == null) {
      return null;
    }
    return DuolingoUser(
      uid: user.uid,
      email: user.email,
      displayName: user.displayName,
      photoURL: user.photoURL,
    );
  }

  factory DuolingoUser.fromMap(Map<String, dynamic> json) {
    return DuolingoUser(
        uid: json['uid'],
        email: json['email'],
        photoURL: json['photoURL'],
        displayName: json['display_name']);
  }

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'email': email,
        'photoURL': photoURL,
        'displayName': displayName
      };
}
