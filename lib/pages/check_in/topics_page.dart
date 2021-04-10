import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class TopicsPage extends StatefulWidget {
  @override
  _TopicsPage createState() => _TopicsPage();
}

class _TopicsPage extends State<TopicsPage> {
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