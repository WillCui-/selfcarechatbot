import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:chatbot_test1/widgets/screen_title.dart';
import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  AppPage(
      {Key key,
      this.header,
      this.text,
      this.buttons = const [],
      this.image = true})
      : super(key: key);
  final String header;
  final String text;
  final List<Widget> buttons;

  // Boolean value to mark if the penguin image should be shown. Default: true
  final bool image;

  @override
  _AppPage createState() => _AppPage();
}

class _AppPage extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(widget.header),
      body: Container(
        alignment: Alignment.center,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                if (widget.image)
                  Image(
                    image: AssetImage('assets/penguin.png'),
                    height: 200,
                    width: 200,
                  ),
                if (widget.text != null) ScreenTitle(widget.text),
              ] +
              widget.buttons,
        ),
      ),
    );
  }
}
