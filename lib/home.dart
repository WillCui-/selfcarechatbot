import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chatbot-page.dart';

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
            ElevatedButton(
              child: Text("Login"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/login", (_) => false);
              },
            )
          else
            ElevatedButton(
              child: Text("Logout"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
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
                ElevatedButton(
                  child: Text('Daily check-in'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ChatbotPage();
                      }),
                    );
                  },
                ),
              ])),
    );
  }
}
