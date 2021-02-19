import 'package:chatbot_test1/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';
import 'register.dart';
import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

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
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.teal,
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
          );
        }

        return Container();
      },
    );
  }
}
