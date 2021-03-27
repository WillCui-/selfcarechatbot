import 'package:chatbot_test1/widgets/app_page.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MeditationVid2 extends StatefulWidget {
  @override
  _MeditationVid2 createState() => _MeditationVid2();
}

class _MeditationVid2 extends State<MeditationVid2> {
  @override
  Widget build(BuildContext context) {
    String videoId;
    videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=-2zdUXve6fQ&t=104s");

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return AppPage(
      header: 'Welcome to a 20-min Meditation!',
      image: false,
      buttons: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
          ),
        ),
      ],
    );
  }
}
