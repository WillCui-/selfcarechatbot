import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
              title: 'Home Page',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: Register(),
              routes: <String, WidgetBuilder>{
                '/register': (BuildContext context) => Register(),
                '/login': (BuildContext context) => Login(),
              },
            );
          }

          // TODO: Loading, perhaps return a loading splash?
          return Container();
        });
  }
}

/* Sample Code
class App extends StatefulWidget {
  _AppState createState() => _AppState();
}
class _AppState extends State<App> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;
  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }
  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if(_error) {
      return SomethingWentWrong();
    }
    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return Loading();
    }
    return MyAwesomeApp();
  }
}
*/
