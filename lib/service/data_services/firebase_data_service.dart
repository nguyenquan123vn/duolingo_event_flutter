import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duolingo_event_app/models/event.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';

class FirebaseDataService implements DataService {
  FirebaseDataService();

  final firestore = FirebaseFirestore.instance;

  static const String user_collection = 'user';
  static const String event_collection = 'event';

  void createUserInDatabaseWithEmail(DuolingoUser user) async {}
  void createUserInDatabaseWithGoogleProvider(DuolingoUser user) async {}
  void createUserInDatabaseWithFacebook(DuolingoUser user) async {}

  //get
  Future<String> getPhotoUrl(DuolingoUser user) {}
  Future<List<Event>> getAllEvent() async {
    List<Event> event_list = List<Event>();
    await firestore.collection(event_collection).get().then((snapshot) {
      List documents = snapshot.docs;

      for (QueryDocumentSnapshot doc in documents) {
        if (doc.exists) {
          Event event = Event.fromMap(doc.data());
          event_list.add(event);
        }
      }
    });
    return event_list;
  }

  @override
  void dispose() {}
}
