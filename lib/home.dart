import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.guest = false}) : super(key: key);
  final String title;
  final bool guest;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          if (widget.guest)
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
              "We are in this together!!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Times New Roman",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
