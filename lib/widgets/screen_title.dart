import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  ScreenTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
