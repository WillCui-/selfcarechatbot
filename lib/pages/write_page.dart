import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class WritePage extends StatefulWidget {
  @override
  _WritePage createState() => _WritePage();
}

class _WritePage extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: "Journal of the Day",
      text: 'Write down what you have in mind:\n',
      buttons: [
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
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Done',
            onPressed: () {
              Navigator.pushNamed(context, '/placeholder');
            },
          ),
        ),
      ],
    );
  }
}
