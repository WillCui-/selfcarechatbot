import 'package:chatbot_test1/home.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final FirebaseAnalytics analytics = FirebaseAnalytics();

  TextEditingController firstNameInputController;
  TextEditingController lastNameInputController;
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  TextEditingController confirmPwdInputController;

  @override
  void initState() {
    firstNameInputController = new TextEditingController();
    lastNameInputController = new TextEditingController();
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    confirmPwdInputController = new TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    Future<void> login() {
      return FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailInputController.text,
            password: pwdInputController.text,
          )
          .then(
            (user) => {
              analytics.logSignUp(signUpMethod: 'app'),
              user.user
                  .updateProfile(
                    displayName: firstNameInputController.text +
                        " " +
                        lastNameInputController.text,
                  )
                  .then(
                    (_) => {
                      FirebaseFirestore.instance
                          .collection("users")
                          .doc(user.user.uid)
                          .set(
                            {
                              "uid": user.user.uid,
                              "fname": firstNameInputController.text,
                              "lname": lastNameInputController.text,
                              "email": emailInputController.text,
                              "creationDate": DateTime.now(),
                              "loginTimes": [DateTime.now()],
                            },
                          )
                          .then(
                            (_) => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    title: firstNameInputController.text +
                                        " " +
                                        lastNameInputController.text +
                                        "\'s Home Page",
                                  ),
                                ),
                                (_) => false,
                              )
                                  .then(
                                    (_) => {
                                      firstNameInputController.clear(),
                                      lastNameInputController.clear(),
                                      emailInputController.clear(),
                                      pwdInputController.clear(),
                                      confirmPwdInputController.clear(),
                                    },
                                  )
                                  .catchError(print),
                            },
                          )
                          .catchError(print),
                    },
                  )
                  .catchError(print),
            },
          )
          .catchError(print);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _registerFormKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'First Name*', hintText: "John"),
                  controller: firstNameInputController,
                  validator: (value) {
                    if (value.length < 2) {
                      return "Please enter a valid first name.";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Last Name*', hintText: "Smith"),
                  controller: lastNameInputController,
                  validator: (value) {
                    if (value.length < 2) {
                      return "Please enter a valid last name.";
                    } else {
                      return null;
                    }
                  },
                ),
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
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Confirm Password*', hintText: "********"),
                  controller: confirmPwdInputController,
                  obscureText: true,
                  validator: pwdValidator,
                ),
                ElevatedButton(
                  child: Text("Register"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    // If the forms are valid via validators
                    if (_registerFormKey.currentState.validate()) {
                      // If the password is the same as confirm password
                      if (pwdInputController.text ==
                          confirmPwdInputController.text) {
                        login();
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Error"),
                              content: Text("Passwords must match"),
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
                    }
                  },
                ),
                Text("Already have an account?"),
                TextButton(
                  child: Text("Login here"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
