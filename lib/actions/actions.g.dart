// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides

class _$AppActions extends AppActions {
  factory _$AppActions() => new _$AppActions._();
  _$AppActions._() : super._();

  final ActionDispatcher<Null> fetchVideosAction =
      new ActionDispatcher<Null>('AppActions-fetchVideosAction');
  final ActionDispatcher<int> selectVideoAction =
      new ActionDispatcher<int>('AppActions-selectVideoAction');
  final ActionDispatcher<Null> toggleAudioAction =
      new ActionDispatcher<Null>('AppActions-toggleAudioAction');
  final ActionDispatcher<VideoPlayerController> playerInitAction =
      new ActionDispatcher<VideoPlayerController>(
          'AppActions-playerInitAction');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    fetchVideosAction.setDispatcher(dispatcher);
    selectVideoAction.setDispatcher(dispatcher);
    toggleAudioAction.setDispatcher(dispatcher);
    playerInitAction.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final ActionName<Null> fetchVideosAction =
      new ActionName<Null>('AppActions-fetchVideosAction');
  static final ActionName<int> selectVideoAction =
      new ActionName<int>('AppActions-selectVideoAction');
  static final ActionName<Null> toggleAudioAction =
      new ActionName<Null>('AppActions-toggleAudioAction');
  static final ActionName<VideoPlayerController> playerInitAction =
      new ActionName<VideoPlayerController>('AppActions-playerInitAction');
}
