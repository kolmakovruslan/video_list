import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:video_list_with_autoplay/models/video.dart';
import 'package:video_list_with_autoplay/presentation/video_widget.dart';

class VideoList extends StatelessWidget {
  final List<Video> items;
  final int nowPlayingIndex;
  final Function(int) onVideoSelected;

  VideoList(
    this.items, {
    this.nowPlayingIndex,
    this.onVideoSelected,
  });

  @override
  Widget build(BuildContext context) => NotificationListener(
        child: ListView.builder(
          itemBuilder: (ctx, pos) => MetaData(
            key: ValueKey("$pos"),
            behavior: HitTestBehavior.translucent,
            metaData: pos,
            child: VideoWidget(
              ValueKey("$pos${pos == nowPlayingIndex}"),
              items[pos].url,
              pos == nowPlayingIndex,
            ),
          ),
          itemCount: items.length,
        ),
        onNotification: (notification) {
          if (notification is ScrollEndNotification)
            Future.microtask(() {
              _onScrollEnd(notification);
            });
          return false;
        },
      );

  void _onScrollEnd(ScrollEndNotification notification) {
    final box = notification.context.findRenderObject() as RenderBox;
    final globalOffset = box.localToGlobal(Offset(0, box.size.height / 2));
    final centerItem = _checkPositionAtOffset(globalOffset);
    if (centerItem != null && centerItem != nowPlayingIndex) {
      onVideoSelected(centerItem);
    }
  }

  int _checkPositionAtOffset(Offset globalPosition) {
    final HitTestResult result = new HitTestResult();
    WidgetsBinding.instance.hitTest(result, globalPosition);
    int centerPosition;
    for (HitTestEntry entry in result.path) {
      if (entry.target is RenderMetaData) {
        final renderMetaData = entry.target as RenderMetaData;
        if (renderMetaData.metaData is int) {
          centerPosition = renderMetaData.metaData as int;
          break;
        }
      }
    }
    return centerPosition;
  }
}
