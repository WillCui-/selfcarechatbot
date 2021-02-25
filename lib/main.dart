import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/user.dart';
import 'package:chatbot_test1/splash.dart';
import 'package:chatbot_test1/home.dart';
import 'package:chatbot_test1/register.dart';
import 'package:chatbot_test1/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    userModel: UserModel(),
  ));
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final UserModel userModel;

  MyApp({
    Key key,
    @required this.userModel,
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

        if (snapshot.connectionState == ConnectionState.done) {
          return ScopedModel<UserModel>(
            model: userModel,
            child: MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.teal,
                accentColor: Colors.white,
                textTheme: GoogleFonts.gloriaHallelujahTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              home: Splash(),
              routes: <String, WidgetBuilder>{
                '/splash': (BuildContext context) => Splash(),
                '/register': (BuildContext context) => Register(),
                '/login': (BuildContext context) => Login(),
                '/home': (BuildContext context) => HomePage(
                    // title: "Home Page",
                    ),
              },
            ),
          );
        }
      },
    );
  }
}
