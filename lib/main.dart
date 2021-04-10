import 'package:chatbot_test1/pages/check_in/check_in_page.dart';
import 'package:chatbot_test1/pages/check_in/good_to_hear_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_duration_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_info_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_info_more_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_vid_1_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_vid_2_page.dart';
import 'package:chatbot_test1/pages/navigation_page.dart';
import 'package:chatbot_test1/pages/placeholder_page.dart';
import 'package:chatbot_test1/pages/check_in/topics_page.dart';
import 'package:chatbot_test1/pages/check_in/work_page.dart';
import 'package:chatbot_test1/pages/check_in/journal_page.dart';
import 'package:chatbot_test1/pages/check_in/challenge_page.dart';
import 'package:chatbot_test1/models/user.dart';
import 'package:chatbot_test1/splash.dart';
import 'package:chatbot_test1/pages/home_page.dart';
import 'package:chatbot_test1/pages/users/register_page.dart';
import 'package:chatbot_test1/pages/users/login_page.dart';
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
                '/register': (BuildContext context) => RegisterPage(),
                '/login': (BuildContext context) => LoginPage(),
                '/home': (BuildContext context) => HomePage(
                    // title: "Home Page",
                    ),
                '/checkin': (BuildContext context) => CheckInPage(),
                '/goodtohear': (BuildContext context) => GoodToHearPage(),
                '/meditation': (BuildContext context) => MeditationPage(),
                '/meditationduration': (BuildContext context) => MeditationDurationPage(),
                '/meditationinfo/1': (BuildContext context) => MeditationInfoPage(),
                '/meditationinfo/2': (BuildContext context) => MeditationInfoMorePage(),
                '/meditationvid/1': (BuildContext context) => MeditationVid1Page(),
                '/meditationvid/2': (BuildContext context) => MeditationVid2Page(),
                '/navigation': (BuildContext context) => NavigationPage(),
                '/topic': (BuildContext context) => TopicsPage(),
                '/workpage': (BuildContext context) => WorkPage(),
                '/writepage': (BuildContext context) => JournalPage(),
                '/yespage': (BuildContext context) => ChallengePage(),
                '/placeholder': (BuildContext context) => PlaceHolderPage(),
              },
            ),
          );
        }

        // TODO: Return something while it is loading
      },
    );
  }
}
