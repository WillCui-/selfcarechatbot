import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/check_in_model.dart';
import 'package:chatbot_test1/models/user_model.dart';
import 'package:chatbot_test1/splash.dart';
import 'package:chatbot_test1/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    userModel: UserModel(),
    checkInModel: CheckInModel(),
  ));
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final FirebaseAnalytics analytics = FirebaseAnalytics();

  final UserModel userModel;
  final CheckInModel checkInModel;

  MyApp({
    Key key,
    @required this.userModel,
    @required this.checkInModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          // TODO: There's an error
        }

        var materialApp = MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.teal,
            accentColor: Colors.white,
            textTheme: GoogleFonts.gloriaHallelujahTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: Splash(),
          routes: routes,
        );

        if (snapshot.connectionState == ConnectionState.done) {
          return ScopedModel<UserModel>(
            model: this.userModel,
            child: ScopedModel<CheckInModel>(
              model: this.checkInModel,
              child: materialApp,
            ),
          );
        }

        // TODO: Return something while it is loading
      },
    );
  }
}
