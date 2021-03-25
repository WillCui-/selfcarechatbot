import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Navigation',
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
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Daily Check-in',
                onPressed: () {
                  Navigator.pushNamed(context, '/checkin');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Meditation',
                onPressed: () {
                  Navigator.pushNamed(context, '/meditation');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
