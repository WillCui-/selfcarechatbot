import 'package:chatbot_test1/models/user_model.dart';
import 'package:chatbot_test1/pages/app_page.dart';
import 'package:chatbot_test1/widgets/single_choice_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sentiment_dart/sentiment_dart.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPage createState() => _JournalPage();
}

class _JournalPage extends State<JournalPage> {
  final textController = TextEditingController();
  final sentiment = Sentiment();

  void storeSentiment(UserModel userModel) {
    var sentimentScore = sentiment.analysis(textController.text);
    FirebaseFirestore.instance
        .collection("users")
        .doc(
            userModel.isGuest ? "guest" : FirebaseAuth.instance.currentUser.uid)
        .update({
      "journal": FieldValue.arrayUnion([
        {
          'text': textController.text,
          'time': DateTime.now(),
          'score': sentimentScore['score'],
          'comparative': sentimentScore['comparative'],
        }
      ]),
    });
  }

  // Cleans up the text controller when the widget is disposed.
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userModel = ScopedModel.of<UserModel>(context, rebuildOnChange: true);

    return AppPage(
      header: "Journal of the Day",
      text: 'Write down what you have in mind:\n',
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(32.0, 5.0, 32.0, 4.0),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: textController,
            maxLines: 5,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: '  Today I feel...',
              //counterText: '0 characters',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              fillColor: Colors.white,
            ),
          ),
        ),
        SingleChoiceButton(
          'Done',
          '/placeholder',
          onPressed: () => storeSentiment(userModel),
        ),
      ],
    );
  }
}
