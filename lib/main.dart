import 'package:duolingo_event_app/provider/eventFilter.dart';
import 'package:duolingo_event_app/service/authentication/firebase_auth_service.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';
import 'package:duolingo_event_app/service/data_services/firebase_data_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/route_generator.dart';
import 'package:duolingo_event_app/screens/auth_page.dart';
import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:duolingo_event_app/screens/authBuilder.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
            create: (_) => FirebaseAuthService(),
            dispose: (_, AuthService authService) => authService.dispose()),
        Provider<DataService>(create: (_) => FirebaseDataService()),
        //dispose: (_, DataService dataService) => dataService.dispose()),
        ChangeNotifierProvider(create: (context) => EventFilter()),
      ],
      child: AuthWidgetBuilder(builder:
          (BuildContext context, AsyncSnapshot<DuolingoUser> userSnapshot) {
        return MaterialApp(
          title: 'Duolingo Events',
          debugShowCheckedModeBanner: false,
          home: AuthWidget(
            userSnapshot: userSnapshot,
          ),
          onGenerateRoute: RouteGenerator.onGenerateRoute,
        );
      }),
    );
  }
}
