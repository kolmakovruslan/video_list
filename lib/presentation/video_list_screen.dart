import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';
import 'package:video_list_with_autoplay/actions/actions.dart';
import 'package:video_list_with_autoplay/models/app_state.dart';
import 'package:video_list_with_autoplay/presentation/video_list.dart';

class VideoListPage extends StoreConnector<AppState, AppActions, AppState> {
  @override
  Widget build(BuildContext context, AppState state, AppActions actions) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video list"),
      ),
      body: VideoList(
        state.videos,
        nowPlayingIndex: state.nowPlayingIndex,
        onVideoSelected: (index) => actions.selectVideoAction(index),
        audioIsOn: state.soundIsOn,
        toggleAudio: () => actions.toggleAudioAction(),
        onVideoInit: (controller) => actions.playerInitAction(controller),
      ),
    );
  }

  @override
  AppState connect(AppState state) => state;
}
