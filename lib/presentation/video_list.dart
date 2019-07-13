import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoList extends StatelessWidget {
  final List<Object> items;
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
            behavior: HitTestBehavior.translucent,
            metaData: pos,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 420,
              color: nowPlayingIndex == pos ? Colors.green : Colors.yellow,
              child: Center(
                child: Text(pos.toString()),
              ),
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
