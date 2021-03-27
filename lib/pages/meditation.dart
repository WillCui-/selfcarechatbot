import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class Meditation extends StatefulWidget {
  @override
  _Meditation createState() => _Meditation();
}

class _Meditation extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Meditation History',
      text: 'Have you meditated before?',
      buttons: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Yes',
            onPressed: () {
              Navigator.pushNamed(context, '/meditationduration');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'No',
            onPressed: () {
              Navigator.pushNamed(context, '/meditationinfo/1');
            },
          ),
        ),
      ],
    );
  }
}
