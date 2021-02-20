import 'package:chatbot_test1/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    User user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      Future(() {
        Navigator.pushReplacementNamed(context, "/login");
      });
    } else {
      Future(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              title: user.displayName + "\'s Home Page",
            ),
          ),
        );
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Loading..."),
        ),
      ),
    );
  }
}
