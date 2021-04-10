import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePage createState() => _ChallengePage();
}

class _ChallengePage extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: "Let's challenge it!",
      text: 'What would you like to do?',
      children: [
        SingleChoiceButton(
          'Tell me more about it!',
          '/writepage',
        ),
        SingleChoiceButton(
          'Meditate',
          '/meditationinfo/1',
        ),
      ],
    );
  }
}
