import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';
import 'package:flutter/material.dart';

class PlaceHolderPage extends StatefulWidget {
  @override
  _PlaceHolderPage createState() => _PlaceHolderPage();
}

class _PlaceHolderPage extends State<PlaceHolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "Place Holder",
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
              width: 200,
            ),
            ScreenTitle('To be continued...')
          ],
        ),
      ),
    );
  }
}
