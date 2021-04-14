import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duolingo_event_app/models/event.dart';
import 'package:duolingo_event_app/models/reservation.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';

class FirebaseDataService implements DataService {
  FirebaseDataService();

  final firestore = FirebaseFirestore.instance;

  static const String user_collection = 'user';
  static const String event_collection = 'event';
  static const String reservation_collection = 'reservation';

  static const String user_displayName = 'displayName';
  static const String user_photoURL = 'photoURL';
  static const String user_email = 'email';

  Future<void> createUserInDatabaseWithEmail(DuolingoUser user) async {
    await firestore.collection(user_collection).doc(user.uid).set({
      user_displayName: user.displayName,
      user_email: user.email,
      user_photoURL: user.photoURL
    }).whenComplete(() => print('Created with email'));
  }

  void createUserInDatabaseWithGoogleProvider(DuolingoUser user) async {
    await firestore.collection(user_collection).doc(user.uid).set({
      user_displayName: user.displayName,
      user_email: user.email,
      user_photoURL: user.photoURL
    }).whenComplete(() => print('Created with email'));
  }

  void createUserInDatabaseWithFacebook(DuolingoUser user) async {}

  //get
  Future<String> getPhotoUrl(DuolingoUser user) {}

  // get events by filter
  List<Event> _eventsByFilterFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) => Event.fromMap(doc.data())).toList();
  }

  Stream<List<Event>> getEventsByFilter(String language, String level) {
    if (language == 'ALL LANGUAGES' && level != 'ALL LEVELS') {
      return firestore
          .collection(event_collection)
          .where("attendeeProficiency", isEqualTo: level)
          .snapshots()
          .map(_eventsByFilterFromSnapshot);
    } else if (language != 'ALL LANGUAGES' && level == 'ALL LEVELS') {
      return firestore
          .collection(event_collection)
          .where("language", isEqualTo: language)
          .snapshots()
          .map(_eventsByFilterFromSnapshot);
    } else if (language != 'ALL LANGUAGES' && level != 'ALL LEVELS') {
      return firestore
          .collection(event_collection)
          .where("language", isEqualTo: language)
          .where("attendeeProficiency", isEqualTo: level)
          .snapshots()
          .map(_eventsByFilterFromSnapshot);
    } else {
      return firestore
          .collection(event_collection)
          .snapshots()
          .map(_eventsByFilterFromSnapshot);
    }
  }

  @override
  void dispose() {}

  Future<bool> eventReservation(
      String userId, String eventId, int reservationCount) async {
    List<String> userIdList = <String>[];

    //update event reservationCount
    await firestore
        .collection(event_collection)
        .doc(eventId)
        .update({"reservationCount": reservationCount + 1})
        .then((value) => print("Update event's attended user"))
        .catchError((error) => print("Failed to update"));

    //create user_event document as reservation
    await firestore
        .collection(reservation_collection)
        .add({"userId": userId, "eventId": eventId})
        .then((value) => print("Attended"))
        .catchError((error) => print("Failed to reservation"));

    //check if user is attending, return: true/false
    await firestore
        .collection(reservation_collection)
        .where('eventId', isEqualTo: eventId)
        .get()
        .then((snapshot) {
      List documents = snapshot.docs;
      for (QueryDocumentSnapshot doc in documents) {
        if (doc.exists) {
          Reservation reservation = Reservation.fromMap(doc.data());
          userIdList.add(reservation.userId);
        }
      }
    });

    return userIdList.contains(userId);
  }

  @override
  Future<bool> cancelEventReservation(String reservationId, String eventId,
      String userId, int reservationCount) async {
    List<String> userIdList = <String>[];

    await firestore
        .collection(event_collection)
        .doc(eventId)
        .update({"reservationCount": reservationCount - 1})
        .then((value) => print("Update reservation"))
        .catchError((error) => print("Failed to update reservation count"));
    await firestore
        .collection(reservation_collection)
        .doc(reservationId)
        .delete()
        .then((value) => print("Cancel reservation"))
        .catchError((error) => print("Failed to cancel"));
    await firestore
        .collection(reservation_collection)
        .where('eventId', isEqualTo: eventId)
        .get()
        .then((snapshot) {
      List documents = snapshot.docs;
      for (QueryDocumentSnapshot doc in documents) {
        if (doc.exists) {
          Reservation reservation = Reservation.fromMap(doc.data());
          userIdList.add(reservation.userId);
        }
      }
    });

    return userIdList.contains(userId);
  }

  @override
  Future<Map<String, Object>> isUserAttend(
      String userId, String eventId) async {
    List<String> userIdList = <String>[];
    String uid;

    await firestore
        .collection(reservation_collection)
        .where('eventId', isEqualTo: eventId)
        .get()
        .then((snapshot) {
      List documents = snapshot.docs;
      for (QueryDocumentSnapshot doc in documents) {
        if (doc.exists) {
          Reservation reservation = Reservation.fromMap(doc.data());
          userIdList.add(reservation.userId);
          uid = doc.id;
        }
      }
    });
    return {"isAttend": userIdList.contains(userId), "reservationId": uid};
  }
}
