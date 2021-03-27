import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MeditationInfoMore extends StatefulWidget {
  @override
  _MeditationInfoMore createState() => _MeditationInfoMore();
}

class _MeditationInfoMore extends State<MeditationInfoMore> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'More about Meditation',
      text: '    “Mindfulness is your awareness of \n'
          '  what’s going on in the present moment\n'
          '  without any judgment.\n'
          '\n  Meditation is the training of attention \n  which cultivates that mindfulness.”'
          '\n                           - Tara Brach\n',
      buttons: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: MaterialButton(
            onPressed: () {
              _launchURL('https://www.nytimes.com/guides/well/how-to-meditate');
            },
            child: Text(
              "Read More about it",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            shape: Border.all(
              color: Colors.white,
              width: 0.5,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChoiceButton(
            'Start',
            onPressed: () {
              Navigator.pushNamed(context, '/meditationduration');
            },
          ),
        ),
      ],
    );
  }
}
