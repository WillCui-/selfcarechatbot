import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingleChoiceButton extends StatelessWidget {
  final String text;
  final String route;
  final Function onPressed;

  SingleChoiceButton(
    this.text,
    this.route, {
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: OutlinedButton(
        onPressed: () {
          this.onPressed?.call();
          FirebaseFirestore.instance
              .collection("users")
              .doc(FirebaseAuth.instance.currentUser.uid)
              .update({
            "history": FieldValue.arrayUnion([
              {
                'page': this.route,
                'time': DateTime.now(),
              }
            ]),
          }).catchError(print);
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
