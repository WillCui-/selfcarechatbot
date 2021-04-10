import 'package:chatbot_test1/pages/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPage createState() => _MeditationPage();
}

class _MeditationPage extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Meditation History',
      text: 'Have you meditated before?',
      children: [
        SingleChoiceButton(
          'Yes',
          '/meditation/duration',
        ),
        SingleChoiceButton(
          'No',
          '/meditation/info/1',
        ),
      ],
    );
  }
}
