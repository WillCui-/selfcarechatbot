import 'package:chatbot_test1/pages/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class CheckInPage extends StatefulWidget {
  @override
  _CheckInPage createState() => _CheckInPage();
}

class _CheckInPage extends State<CheckInPage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Daily Check-in',
      text: 'How are you today?',
      children: [
        SingleChoiceButton(
          'Good :-)',
          '/goodtohear',
        ),
        SingleChoiceButton(
          'Bad :-(',
          '/checkin/topics',
        ),
      ],
    );
  }
}
