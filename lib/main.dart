import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';
import 'package:video_list_with_autoplay/actions/actions.dart';
import 'package:video_list_with_autoplay/models/app_state.dart';
import 'package:video_list_with_autoplay/reducers/reducers.dart';
import 'presentation/video_list_screen.dart';

void main() => runApp(VideoListApp());

class VideoListApp extends StatefulWidget {
  final store = Store<AppState, AppStateBuilder, AppActions>(
    reducerBuilder.build(),
    AppState(),
    AppActions(),
  );

  @override
  State<StatefulWidget> createState() => _VideoListAppState();
}

class _VideoListAppState extends State<VideoListApp> {
  Store<AppState, AppStateBuilder, AppActions> store;

  @override
  void initState() {
    store = widget.store;
    store.actions.fetchVideosAction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ReduxProvider(
        store: store,
        child: MaterialApp(
          home: VideoListPage(),
        ),
      );
}
