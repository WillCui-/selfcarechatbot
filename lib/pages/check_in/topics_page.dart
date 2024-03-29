import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/check_in_model.dart';
import 'package:chatbot_test1/pages/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';

class TopicsPage extends StatefulWidget {
  @override
  _TopicsPage createState() => _TopicsPage();
}

class _TopicsPage extends State<TopicsPage> {
  @override
  Widget build(BuildContext context) {
    final checkInModel = ScopedModel.of<CheckInModel>(context, rebuildOnChange: true);

    return AppPage(
      header: 'Choose an area:',
      text: 'Which areas of your life are impacted?',
      children: [
        SingleChoiceButton(
          'Family',
          '/checkin/thought',
          onPressed: () => checkInModel.topic = CheckInTopics.family,
        ),
        SingleChoiceButton(
          'Work',
          '/checkin/thought',
          onPressed: () => checkInModel.topic = CheckInTopics.work,
        ),
      ],
    );
  }
}
