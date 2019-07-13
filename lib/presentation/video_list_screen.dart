import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_list_with_autoplay/presentation/video_list.dart';

class VideoListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {
  int _nowPlaying = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Video list"),
        ),
        body: VideoList(
          List.generate(30, (index) {
            return Object();
          }),
          nowPlayingIndex: _nowPlaying,
          onVideoSelected: (index) {
            setState(() {
              _nowPlaying = index;
            });
          },
        ),
      );
}
