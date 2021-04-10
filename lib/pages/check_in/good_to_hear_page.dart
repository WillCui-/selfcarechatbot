import 'package:chatbot_test1/pages/app_page.dart';
import 'package:flutter/material.dart';

class GoodToHearPage extends StatefulWidget {
  @override
  _GoodToHearPage createState() => _GoodToHearPage();
}

class _GoodToHearPage extends State<GoodToHearPage> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Good to hear',
      text: 'I am happy to hear that!',
    );
  }
}
