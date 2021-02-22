import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

Widget appBar(
  BuildContext context,
  String title,
  bool guest,
) {
  return AppBar(
    title: Text(title),
    actions: <Widget>[
      if (guest)
        RaisedButton(
          child: Text("Login"),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, "/login", (_) => false);
          },
        )
      else
        RaisedButton(
          child: Text("Logout"),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          onPressed: () {
            FirebaseAuth.instance
                .signOut()
                .then((_) => Navigator.pushNamedAndRemoveUntil(
                    context, "/login", (_) => false))
                .catchError((e) => print(e));
          },
        ),
    ],
  );
}
