import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/user.dart';

class _AppBarTitle extends StatelessWidget {
  final String text;

  _AppBarTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.gloriaHallelujah(
        fontSize: 20,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}

class _AppBarTextButton extends StatelessWidget {
  final String text;

  _AppBarTextButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.gloriaHallelujah(
        fontSize: 18,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  MainAppBar(this.title);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final userModel = ScopedModel.of<UserModel>(context, rebuildOnChange: true);

    return AppBar(
      title: _AppBarTitle(title),
      actions: <Widget>[
        if (userModel.isGuest)
          TextButton(
            child: _AppBarTextButton('Login'),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/login", (_) => false);
            },
          )
        else
          TextButton(
            child: _AppBarTextButton('Logout'),
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
