import 'package:chatbot_test1/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MeditationVid1 extends StatefulWidget {
  @override
  _MeditationVid1 createState() => _MeditationVid1();
}

class _MeditationVid1 extends State<MeditationVid1> {
  @override
  Widget build(BuildContext context) {
    String videoId; // this could be replaced with an if statement
    // and just change the link and the title
    videoId = YoutubePlayer.convertUrlToId(
        "https://m.youtube.com/watch?v=ZToicYcHIOU");

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      appBar: MainAppBar(
        'Welcome to a 10-min Meditation!',
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.teal,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}