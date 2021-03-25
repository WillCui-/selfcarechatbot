import 'package:chatbot_test1/pages/check_in.dart';
import 'package:chatbot_test1/pages/good_to_hear.dart';
import 'package:chatbot_test1/pages/meditation.dart';
import 'package:chatbot_test1/pages/meditation_duration.dart';
import 'package:chatbot_test1/pages/meditation_info.dart';
import 'package:chatbot_test1/pages/meditation_info_more.dart';
import 'package:chatbot_test1/pages/meditation_vid_1.dart';
import 'package:chatbot_test1/pages/meditation_vid_2.dart';
import 'package:chatbot_test1/pages/navigation.dart';
import 'package:chatbot_test1/pages/topic.dart';
import 'package:chatbot_test1/pages/work_page.dart';
import 'package:chatbot_test1/pages/write_page.dart';
import 'package:chatbot_test1/pages/yes_page.dart';
import 'package:chatbot_test1/models/user.dart';
import 'package:chatbot_test1/splash.dart';
import 'package:chatbot_test1/home.dart';
import 'package:chatbot_test1/pages/register.dart';
import 'package:chatbot_test1/pages/login.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    userModel: UserModel(),
  ));
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final FirebaseAnalytics analytics = FirebaseAnalytics();

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
                '/checkin': (BuildContext context) => CheckIn(),
                '/goodtohear': (BuildContext context) => GoodToHear(),
                '/meditation': (BuildContext context) => Meditation(),
                '/meditationduration': (BuildContext context) => MeditationDuration(),
                '/meditationinfo/1': (BuildContext context) => MeditationInfo(),
                '/meditationinfo/2': (BuildContext context) => MeditationInfoMore(),
                '/meditationvid/1': (BuildContext context) => MeditationVid1(),
                '/meditationvid/2': (BuildContext context) => MeditationVid2(),
                '/navigation': (BuildContext context) => Navigation(),
                '/topic': (BuildContext context) => Topic(),
                '/workpage': (BuildContext context) => WorkPage(),
                '/writepage': (BuildContext context) => WritePage(),
                '/yespage': (BuildContext context) => YesPage(),
                '/placeholder': (BuildContext context) => Placeholder(),
              },
            ),
          );
        }

        // TODO: Return something while it is loading
      },
    );
  }
}
