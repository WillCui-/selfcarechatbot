import 'package:flutter/material.dart';

class SingleChoiceButton extends StatelessWidget {
  final String text;
  final String route;
  final Function onPressed;

  SingleChoiceButton(
    this.text,
    this.route,
    {
      this.onPressed,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: OutlinedButton(
        onPressed: () {
          this.onPressed?.call();
          Navigator.pushNamed(context, this.route);
        },
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
