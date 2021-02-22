import 'package:flutter/material.dart';

import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => Navigation()));
        },
      ),
      appBar: MainAppBar(
        widget.title,
      ),
      body: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                    image: AssetImage('assets/penguin.png'),
                    height: 200,
                    width: 200),
                ScreenTitle('We are in this together!'),
              ])),
    );
  }
}

class Navigation extends StatefulWidget {
  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Navigations',
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/penguin.png'),
                height: 200,
                width: 200),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Daily Check-in',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckInPage(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Meditation',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeditationPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckInPage extends StatefulWidget {
  @override
  _CheckInPage createState() => _CheckInPage();
}

class _CheckInPage extends State<CheckInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          'Daily Check-in',
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                    image: AssetImage('assets/penguin.png'),
                    height: 200,
                    width: 200),
                ScreenTitle('How are you today?'),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SingleChoiceButton(
                    'Good :-)',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GoodToHear(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SingleChoiceButton(
                    'Bad :-)',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TopicPage(),
                        ),
                      );
                    },
                  ),
                ),
              ]),
        ));
  }
}

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPage createState() => _MeditationPage();
}

class _MeditationPage extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          'Meditation Page',
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                  image: AssetImage('assets/penguin.png'),
                  height: 200,
                  width: 200),
              ScreenTitle('To be implemented!'),
            ],
          ),
        ));
  }
}

class GoodToHear extends StatefulWidget {
  @override
  _GoodToHear createState() => _GoodToHear();
}

class _GoodToHear extends State<GoodToHear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          'Good to hear',
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                  image: AssetImage('assets/penguin.png'),
                  height: 200,
                  width: 200),
              ScreenTitle('I am happy to hear that!'),
            ],
          ),
        ));
  }
}

class TopicPage extends StatefulWidget {
  @override
  _TopicPage createState() => _TopicPage();
}

class _TopicPage extends State<TopicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          'Choose an area:',
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                  image: AssetImage('assets/penguin.png'),
                  height: 200,
                  width: 200),
              ScreenTitle('Which areas of your life are impacted?'),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SingleChoiceButton(
                  'Family',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SingleChoiceButton(
                  'Friendship',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
