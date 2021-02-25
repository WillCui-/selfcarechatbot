import 'package:flutter/material.dart';

/*
  This is a template page containing the background with pre-set color
  and penguin picture.
*/
class TemplatePage extends StatefulWidget {
  @override
  _TemplatePage createState() => _TemplatePage();
}

class _TemplatePage extends State<TemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Template"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.teal[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/penguin.png'),
                height: 200,
                width: 200),
            Text(
              "This is a template page!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Times New Roman",
              ),
            )
          ],
        ),
      ),
    );
  }
}
