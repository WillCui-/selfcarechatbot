import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
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
