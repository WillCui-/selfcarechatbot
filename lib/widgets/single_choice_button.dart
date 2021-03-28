import 'package:flutter/material.dart';

class SingleChoiceButton extends StatelessWidget {
  final String text;
  final String route;

  SingleChoiceButton(this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: OutlinedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
