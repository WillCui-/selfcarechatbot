import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class MeditationInfo extends StatefulWidget {
  @override
  _MeditationInfo createState() => _MeditationInfo();
}

class _MeditationInfo extends State<MeditationInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Meditation Page',
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
            ScreenTitle('Meditation is a way to train the mind\n'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Learn More',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditationinfo/2');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Start',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditationduration');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
