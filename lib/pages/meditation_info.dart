import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class MeditationInfo extends StatefulWidget {
  @override
  _MeditationInfo createState() => _MeditationInfo();
}

class _MeditationInfo extends State<MeditationInfo> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Meditation Page',
      text: 'Meditation is a way to train the mind\n',
      buttons: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Learn More',
            onPressed: () {
              Navigator.pushNamed(context, '/meditationinfo/2');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Start',
            onPressed: () {
              Navigator.pushNamed(context, '/meditationduration');
            },
          ),
        ),
      ],
    );
  }
}
