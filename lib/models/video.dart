import 'package:built_value/built_value.dart';

part 'video.g.dart';

abstract class Video implements Built<Video, VideoBuilder> {
  String get url;

  Video._();

  factory Video([void Function(VideoBuilder) updates]) = _$Video;

  factory Video.fromUrl(String url) => Video((builder) => builder..url = url);
}
