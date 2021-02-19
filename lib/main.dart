import 'package:flutter/material.dart';

import 'chatbot-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
}
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        )
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
        width: 200
      ),
        OutlinedButton(
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