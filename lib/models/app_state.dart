library app_state;

import 'package:built_value/built_value.dart';
import 'package:video_list_with_autoplay/models/video.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  @nullable
  int get nowPlayingIndex;

  @nullable
  List<Video> get videos;

  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}
