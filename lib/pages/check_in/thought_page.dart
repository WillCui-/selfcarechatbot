import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/check_in_model.dart';
import 'package:chatbot_test1/pages/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';

class ThoughtPage extends StatefulWidget {
  @override
  _ThoughtPage createState() => _ThoughtPage();
}

class _ThoughtPage extends State<ThoughtPage> {
  @override
  Widget build(BuildContext context) {
    final checkInModel = ScopedModel.of<CheckInModel>(context, rebuildOnChange: true);

    return AppPage(
      header: 'Thought',
      text: 'Is this you thought: ${topicTexts[checkInModel.topic]}',
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
