import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPage createState() => _NavigationPage();
}

class _NavigationPage extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Navigation',
      children: [
        SingleChoiceButton(
          'Daily Check-in',
          '/checkin',
        ),
        SingleChoiceButton(
          'Meditation',
          '/meditation',
        ),
      ],
    );
  }
}
