import 'package:built_redux/built_redux.dart';
import 'package:video_list_with_autoplay/actions/actions.dart';
import 'package:video_list_with_autoplay/models/app_state.dart';
import 'package:video_list_with_autoplay/models/video.dart';
import 'package:video_player/video_player.dart';

final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..add(AppActionsNames.fetchVideosAction, _fetchVideo)
  ..add(AppActionsNames.selectVideoAction, _selectVideo)
  ..add(AppActionsNames.toggleAudioAction, _toggleAudio)
  ..add(AppActionsNames.playerInitAction, _playerInit);

void _fetchVideo(AppState state, Action<Null> action, AppStateBuilder builder) {
  final url =
      "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4";
  builder
    ..videos = List.generate(30, (pos) => Video.fromUrl(url))
    ..nowPlayingIndex = 0;
}

void _selectVideo(AppState state, Action<int> action, AppStateBuilder builder) {
  builder.nowPlayingIndex = action.payload;
}

void _toggleAudio(
  AppState state,
  Action<Null> action,
  AppStateBuilder builder,
) {
  builder.soundIsOn = !builder.soundIsOn;
  builder.controller.setVolume(builder.soundIsOn ? 1.0 : 0.0);
}

void _playerInit(
  AppState state,
  Action<VideoPlayerController> action,
  AppStateBuilder builder,
) {
  builder.controller = action.payload;
}
