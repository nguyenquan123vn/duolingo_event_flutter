import 'package:flutter/cupertino.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:duolingo_event_app/main.dart' as app;
import '../lib/screens/authentication/login.dart';

void main() {
  // This line enables the extension.
  enableFlutterDriverExtension();

  // Call the `main()` function of the app, or call `runApp` with
  // any widget you are interested in testing.
  app.main();
}
