import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:chatbot_test1/models/user.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  @override
  void initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  void errorHandler(context, e) {
    String message = "An error has occurred. Please try again.";

    switch (e) {
      case "user-not-found":
        message = "User not found";
        break;
      case "wrong-password":
        message = "Incorrect password";
        break;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userModel = ScopedModel.of<UserModel>(context, rebuildOnChange: true);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _loginFormKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email*', hintText: "abc@example.org"),
                  controller: emailInputController,
                  keyboardType: TextInputType.emailAddress,
                  validator: emailValidator,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password*', hintText: "********"),
                  controller: pwdInputController,
                  obscureText: true,
                  validator: pwdValidator,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    if (_loginFormKey.currentState.validate()) {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailInputController.text,
                              password: pwdInputController.text)
                          .then(
                            (user) => {
                              userModel.isGuest = false,
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    title:
                                        user.user.displayName + "\'s Home Page",
                                  ),
                                ),
                              ),
                              emailInputController.clear(),
                              pwdInputController.clear(),
                            },
                          )
                          .catchError((e) {
                        errorHandler(context, e.code);
                        return null;
                      });
                    }
                  },
                ),
                Text("Don't have an account yet?"),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                        child: Text("Register here!"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/register");
                        },
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        child: Text("Continue as guest"),
                        onPressed: () {
                          userModel.isGuest = true;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                title: "Guest Home Page",
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
