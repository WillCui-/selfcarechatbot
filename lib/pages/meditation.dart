import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class Meditation extends StatefulWidget {
  @override
  _Meditation createState() => _Meditation();
}

class _Meditation extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Meditation History',
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
            ScreenTitle('Have you meditated before?'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Yes',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditationduration');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'No',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditationinfo/1');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
