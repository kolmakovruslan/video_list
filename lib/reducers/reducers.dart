import 'package:built_redux/built_redux.dart';
import 'package:video_list_with_autoplay/actions/actions.dart';
import 'package:video_list_with_autoplay/models/app_state.dart';
import 'package:video_list_with_autoplay/models/video.dart';

final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..add(AppActionsNames.fetchVideosAction, _fetchVideo)
  ..add(AppActionsNames.selectVideoAction, _selectVideo);

void _fetchVideo(AppState state, Action<Null> action, AppStateBuilder builder) {
  builder.videos =
      List.generate(30, (pos) => Video.fromUrl("https://video/$pos"));
}

void _selectVideo(AppState state, Action<int> action, AppStateBuilder builder) {
  builder.nowPlayingIndex = action.payload;
}
