import 'package:chatbot_test1/pages/placeholder.dart';
import 'package:chatbot_test1/pages/work_page.dart';
import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class Topic extends StatefulWidget {
  @override
  _Topic createState() => _Topic();
}

class _Topic extends State<Topic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Choose an area:',
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/penguin.png'),
                height: 200,
                width: 200),
            ScreenTitle('Which areas of your life are impacted?'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Family',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceHolder(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Work',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WorkPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}