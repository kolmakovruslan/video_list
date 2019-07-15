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

  @override
  void setDispatcher(Dispatcher dispatcher) {
    fetchVideosAction.setDispatcher(dispatcher);
    selectVideoAction.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final ActionName<Null> fetchVideosAction =
      new ActionName<Null>('AppActions-fetchVideosAction');
  static final ActionName<int> selectVideoAction =
      new ActionName<int>('AppActions-selectVideoAction');
}
