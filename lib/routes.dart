import 'package:flutter/material.dart';

import 'package:chatbot_test1/pages/check_in/challenge_page.dart';
import 'package:chatbot_test1/pages/check_in/check_in_page.dart';
import 'package:chatbot_test1/pages/check_in/good_to_hear_page.dart';
import 'package:chatbot_test1/pages/check_in/journal_page.dart';
import 'package:chatbot_test1/pages/check_in/topics_page.dart';
import 'package:chatbot_test1/pages/check_in/thought_page.dart';
import 'package:chatbot_test1/pages/home_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_duration_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_info_more_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_info_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_vid_1_page.dart';
import 'package:chatbot_test1/pages/meditation/meditation_vid_2_page.dart';
import 'package:chatbot_test1/pages/navigation_page.dart';
import 'package:chatbot_test1/pages/placeholder_page.dart';
import 'package:chatbot_test1/pages/users/login_page.dart';
import 'package:chatbot_test1/pages/users/register_page.dart';
import 'package:chatbot_test1/splash.dart';

final routes = <String, WidgetBuilder>{
  '/splash': (BuildContext context) => Splash(),
  '/register': (BuildContext context) => RegisterPage(),
  '/login': (BuildContext context) => LoginPage(),
  '/home': (BuildContext context) => HomePage(
      // title: "Home Page",
      ),
  '/checkin': (BuildContext context) => CheckInPage(),
  '/checkin/topics': (BuildContext context) => TopicsPage(),
  '/checkin/thought': (BuildContext context) => ThoughtPage(),
  '/writepage': (BuildContext context) => JournalPage(),
  '/yespage': (BuildContext context) => ChallengePage(),
  '/goodtohear': (BuildContext context) => GoodToHearPage(),
  '/meditation': (BuildContext context) => MeditationPage(),
  '/meditation/duration': (BuildContext context) => MeditationDurationPage(),
  '/meditation/info/1': (BuildContext context) => MeditationInfoPage(),
  '/meditation/info/2': (BuildContext context) => MeditationInfoMorePage(),
  '/meditation/vid/1': (BuildContext context) => MeditationVid1Page(),
  '/meditation/vid/2': (BuildContext context) => MeditationVid2Page(),
  '/navigation': (BuildContext context) => NavigationPage(),
  '/placeholder': (BuildContext context) => PlaceHolderPage(),
};
