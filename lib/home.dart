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
          ],
        ),
      ),
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
                      builder: (context) => MeditationIntroPage3(),
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
          ],
        ),
      ),
    );
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
            ScreenTitle('Meditation is a way to train the mind\n'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Learn More',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeditationIntroPage2(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Start',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeditationDuration(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MeditationIntroPage2 extends StatefulWidget {
  @override
  _MeditationIntroPage2 createState() => _MeditationIntroPage2();
}

class _MeditationIntroPage2 extends State<MeditationIntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'More about Meditation',
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
            ScreenTitle('    “Mindfulness is your awareness of \n'
                '  what’s going on in the present moment\n'
                '  without any judgment.\n'
                '\n  Meditation is the training of attention \n  which cultivates that mindfulness.”'
                '\n                           - Tara Brach\n'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Start',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeditationDuration(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MeditationIntroPage3 extends StatefulWidget {
  @override
  _MeditationIntroPage3 createState() => _MeditationIntroPage3();
}

class _MeditationIntroPage3 extends State<MeditationIntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Meditation History',
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
            ScreenTitle('Have you meditated before?'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Yes',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeditationDuration(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'No',
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

class MeditationDuration extends StatefulWidget {
  @override
  _MeditationDuration createState() => _MeditationDuration();
}

class _MeditationDuration extends State<MeditationDuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Meditation Duration',
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
            ScreenTitle('How long would you like to \n'
                'meditate today\n'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                '10 minutes',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PlaceHolderPage(), //To be replaced with video
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                '20 minutes',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PlaceHolderPage(), //To be replaced with video
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
      ),
    );
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
                      builder: (context) => PlaceHolderPage(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Work',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WorkPage(),
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

class WorkPage extends StatefulWidget {
  @override
  _WorkPage createState() => _WorkPage();
}

class _WorkPage extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        'Work',
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
            ScreenTitle(
                '     Is this your thought: Unless I do \n  everything perfectly life is intolerable?\n'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Yes',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YesPage(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'No',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceHolderPage(),
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

class YesPage extends StatefulWidget {
  @override
  _YesPage createState() => _YesPage();
}

class _YesPage extends State<YesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "Let's challenge it!",
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
            ScreenTitle('What would you like to do?'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Tell me more about it!',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WritePage(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Meditate',
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

class PlaceHolderPage extends StatefulWidget {
  @override
  _PlaceHolderPage createState() => _PlaceHolderPage();
}

class _PlaceHolderPage extends State<PlaceHolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "Place Holder",
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
            ScreenTitle('To be continued...')
          ],
        ),
      ),
    );
  }
}

class WritePage extends StatefulWidget {
  @override
  _WritePage createState() => _WritePage();
}

class _WritePage extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "Journal of the Day",
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
            ScreenTitle('Write down what you have in mind:\n'),
            Padding(
                padding: EdgeInsets.fromLTRB(32.0, 5.0, 32.0, 4.0),
                child: TextField(
                    style: TextStyle(color: Colors.white),
                    maxLines: 5,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: '  Today I feel...',
                        //counterText: '0 characters',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        fillColor: Colors.white))),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChoiceButton(
                'Done',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceHolderPage(),
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
