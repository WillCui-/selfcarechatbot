import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
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
                RaisedButton(
                  child: Text("Register"),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    // If the forms are valid via validators
                    if (_registerFormKey.currentState.validate()) {
                      // If the password is the same as confirm password
                      if (pwdInputController.text ==
                          confirmPwdInputController.text) {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailInputController.text,
                            password: pwdInputController.text);
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Error"),
                              content: Text("Passwords must match"),
                              actions: <Widget>[
                                FlatButton(
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
                FlatButton(
                  child: Text("Login here"),
                  onPressed: () {
                    // Navigator.pop(context);
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
