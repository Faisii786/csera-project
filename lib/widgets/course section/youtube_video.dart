import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyYoutubeVideos extends StatefulWidget {
  const MyYoutubeVideos({super.key});

  @override
  State<MyYoutubeVideos> createState() => _MyYoutubeVideosState();
}

class _MyYoutubeVideosState extends State<MyYoutubeVideos> {
  final videoUrl = "https://www.youtube.com/watch?v=YMx8Bbev6T4";
  late YoutubePlayerController controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);
    controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          enableCaption: true,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        //width: 400,
      ),
    );
  }
}
