import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/models/event.dart';

abstract class DataService {
  //create
  void createUserInDatabaseWithEmail(DuolingoUser user);
  void createUserInDatabaseWithGoogleProvider(DuolingoUser user);
  void createUserInDatabaseWithFacebook(DuolingoUser user);

  //get
  Future<String> getPhotoUrl(DuolingoUser user);
  
  Stream<List<Event>> getEventsByFilter(String language, String level);
  Future<bool> eventReservation(String userId, String eventId, int reservationCount);
  Future<bool> cancelEventReservation(String reservationId, String eventId, String userId, int reservationCount);
  Future<Map<String, Object>> isUserAttend(String userId, String eventId);
  
  void dispose();
}
