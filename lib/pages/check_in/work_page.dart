import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPage createState() => _WorkPage();
}

class _WorkPage extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Work',
      text:
          '     Is this your thought: Unless I do \n  everything perfectly life is intolerable?\n',
      children: [
        SingleChoiceButton(
          'Yes',
          '/yespage',
        ),
        SingleChoiceButton(
          'No',
          '/placeholder',
        ),
      ],
    );
  }
}
