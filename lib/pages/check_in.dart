import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class CheckIn extends StatefulWidget {
  @override
  _CheckIn createState() => _CheckIn();
}

class _CheckIn extends State<CheckIn> {
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
          '/topic',
        ),
      ],
    );
  }
}
