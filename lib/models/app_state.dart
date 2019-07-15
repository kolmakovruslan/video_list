library app_state;

import 'package:built_value/built_value.dart';
import 'package:video_list_with_autoplay/models/video.dart';
import 'package:video_player/video_player.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  @nullable
  int get nowPlayingIndex;

  @nullable
  List<Video> get videos;

  bool get soundIsOn;

  @nullable
  VideoPlayerController get controller;

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) => _$AppState((b) => b
    ..soundIsOn = true
    ..update(updates));
}
