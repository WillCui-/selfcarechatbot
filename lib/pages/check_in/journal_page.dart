import 'package:chatbot_test1/pages/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPage createState() => _JournalPage();
}

class _JournalPage extends State<JournalPage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: "Journal of the Day",
      text: 'Write down what you have in mind:\n',
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(32.0, 5.0, 32.0, 4.0),
            child: TextField(
                style: TextStyle(color: Colors.white),
                maxLines: 5,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: '  Today I feel...',
                    //counterText: '0 characters',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    fillColor: Colors.white))),
        SingleChoiceButton(
          'Done',
          '/placeholder',
        ),
      ],
    );
  }
}
