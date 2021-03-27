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
      buttons: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Good :-)',
            onPressed: () {
              Navigator.pushNamed(context, '/goodtohear');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Bad :-(',
            onPressed: () {
              Navigator.pushNamed(context, '/topic');
            },
          ),
        ),
      ],
    );
  }
}
