import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class MeditationDuration extends StatefulWidget {
  @override
  _MeditationDuration createState() => _MeditationDuration();
}

class _MeditationDuration extends State<MeditationDuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Meditation Duration',
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
            ScreenTitle('How long would you like to \n'
                'meditate today?\n'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                '10 minutes',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditationvid/1');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                '20 minutes',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditationvid/2');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
