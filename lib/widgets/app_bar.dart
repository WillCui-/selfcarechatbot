import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/user.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  MainAppBar(this.title);

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final userModel = ScopedModel.of<UserModel>(context, rebuildOnChange: true);

    return AppBar(
      title: Text(title),
      actions: <Widget>[
        if (userModel.isGuest)
          RaisedButton(
            child: Text("Login"),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/login", (_) => false);
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
}
