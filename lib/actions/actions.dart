import 'package:built_redux/built_redux.dart';

part 'actions.g.dart';

abstract class AppActions implements ReduxActions {
  ActionDispatcher<Null> fetchVideosAction;
  ActionDispatcher<int> selectVideoAction;

  AppActions._();

  factory AppActions() = _$AppActions;
}
