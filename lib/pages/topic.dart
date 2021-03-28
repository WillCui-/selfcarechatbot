import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class Topic extends StatefulWidget {
  @override
  _Topic createState() => _Topic();
}

class _Topic extends State<Topic> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Choose an area:',
      text: 'Which areas of your life are impacted?',
      children: [
        SingleChoiceButton(
          'Family',
          '/placeholder',
        ),
        SingleChoiceButton(
          'Work',
          '/workpage',
        ),
      ],
    );
  }
}
