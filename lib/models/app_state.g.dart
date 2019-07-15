// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final int nowPlayingIndex;
  @override
  final List<Video> videos;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.nowPlayingIndex, this.videos}) : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        nowPlayingIndex == other.nowPlayingIndex &&
        videos == other.videos;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nowPlayingIndex.hashCode), videos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('nowPlayingIndex', nowPlayingIndex)
          ..add('videos', videos))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  int _nowPlayingIndex;
  int get nowPlayingIndex => _$this._nowPlayingIndex;
  set nowPlayingIndex(int nowPlayingIndex) =>
      _$this._nowPlayingIndex = nowPlayingIndex;

  List<Video> _videos;
  List<Video> get videos => _$this._videos;
  set videos(List<Video> videos) => _$this._videos = videos;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _nowPlayingIndex = _$v.nowPlayingIndex;
      _videos = _$v.videos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result = _$v ??
        new _$AppState._(nowPlayingIndex: nowPlayingIndex, videos: videos);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
