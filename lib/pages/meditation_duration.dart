import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class MeditationDuration extends StatefulWidget {
  @override
  _MeditationDuration createState() => _MeditationDuration();
}

class _MeditationDuration extends State<MeditationDuration> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Meditation Duration',
      text: 'How long would you like to \n'
          'meditate today?\n',
      children: [
        SingleChoiceButton(
          '10 minutes',
          '/meditationvid/1',
        ),
        SingleChoiceButton(
          '20 minutes',
          '/meditationvid/2',
        ),
      ],
    );
  }
}
