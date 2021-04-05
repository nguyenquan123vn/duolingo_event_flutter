import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/models/event.dart';

abstract class DataService {
  //create
  void createUserInDatabaseWithEmail(DuolingoUser user);
  void createUserInDatabaseWithGoogleProvider(DuolingoUser user);
  void createUserInDatabaseWithFacebook(DuolingoUser user);

  //get
  Future<String> getPhotoUrl(DuolingoUser user);
  Future<List<Event>> getAllEvent();

  void dispose();
}
