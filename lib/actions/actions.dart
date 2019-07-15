import 'package:built_redux/built_redux.dart';
import 'package:video_player/video_player.dart';

part 'actions.g.dart';

abstract class AppActions implements ReduxActions {
  ActionDispatcher<Null> fetchVideosAction;
  ActionDispatcher<int> selectVideoAction;
  ActionDispatcher<Null> toggleAudioAction;
  ActionDispatcher<VideoPlayerController> playerInitAction;

  AppActions._();

  factory AppActions() = _$AppActions;
}
