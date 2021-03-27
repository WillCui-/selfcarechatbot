import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:flutter/material.dart';

class GoodToHear extends StatefulWidget {
  @override
  _GoodToHear createState() => _GoodToHear();
}

class _GoodToHear extends State<GoodToHear> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      header: 'Good to hear',
      text: 'I am happy to hear that!',
    );
  }
}
