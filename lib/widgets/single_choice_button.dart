import 'package:flutter/material.dart';

class SingleChoiceButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  SingleChoiceButton(this.text, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
