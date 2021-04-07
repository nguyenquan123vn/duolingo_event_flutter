import 'package:flutter/foundation.dart';

class Reservation {
  final String userId;

  Reservation({
    @required this.userId,
  });

  factory Reservation.fromMap(Map<String, dynamic> json) {
    return Reservation(userId: json['userId']);
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
      };
}
