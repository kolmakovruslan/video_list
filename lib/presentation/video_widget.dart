import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String _url;
  final bool _autoPlay;
  final Function _onVideoInit;

  VideoWidget(Key key, this._url, this._autoPlay, this._onVideoInit) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VideoWidgetState(_url, _autoPlay, _onVideoInit);
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController _controller;
  final String _url;
  final bool _autoPlay;
  final Function _onVideoInit;

  _VideoWidgetState(this._url, this._autoPlay, this._onVideoInit);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(_url)
      ..initialize().then((_) {
        _onVideoInit(_controller);
        setState(() {
          if (_autoPlay) _controller.play();
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: 420,
        child: Center(
          child: !_controller.value.initialized
              ? CircularProgressIndicator()
              : FittedBox(
                  key: ValueKey(_url),
                  fit: BoxFit.fitHeight,
                  child: Container(
                    width: _controller.value.size.width,
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ),
        ),
      );
}
