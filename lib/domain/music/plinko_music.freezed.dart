// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plinko_music.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlinkoMusic _$PlinkoMusicFromJson(Map<String, dynamic> json) {
  return _PlinkoMusic.fromJson(json);
}

/// @nodoc
mixin _$PlinkoMusic {
  String get id => throw _privateConstructorUsedError;
  String get songName => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get mediaFile => throw _privateConstructorUsedError;

  /// Serializes this PlinkoMusic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlinkoMusic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlinkoMusicCopyWith<PlinkoMusic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlinkoMusicCopyWith<$Res> {
  factory $PlinkoMusicCopyWith(
          PlinkoMusic value, $Res Function(PlinkoMusic) then) =
      _$PlinkoMusicCopyWithImpl<$Res, PlinkoMusic>;
  @useResult
  $Res call({String id, String songName, String artistName, String mediaFile});
}

/// @nodoc
class _$PlinkoMusicCopyWithImpl<$Res, $Val extends PlinkoMusic>
    implements $PlinkoMusicCopyWith<$Res> {
  _$PlinkoMusicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlinkoMusic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songName = null,
    Object? artistName = null,
    Object? mediaFile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      mediaFile: null == mediaFile
          ? _value.mediaFile
          : mediaFile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlinkoMusicImplCopyWith<$Res>
    implements $PlinkoMusicCopyWith<$Res> {
  factory _$$PlinkoMusicImplCopyWith(
          _$PlinkoMusicImpl value, $Res Function(_$PlinkoMusicImpl) then) =
      __$$PlinkoMusicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String songName, String artistName, String mediaFile});
}

/// @nodoc
class __$$PlinkoMusicImplCopyWithImpl<$Res>
    extends _$PlinkoMusicCopyWithImpl<$Res, _$PlinkoMusicImpl>
    implements _$$PlinkoMusicImplCopyWith<$Res> {
  __$$PlinkoMusicImplCopyWithImpl(
      _$PlinkoMusicImpl _value, $Res Function(_$PlinkoMusicImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlinkoMusic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songName = null,
    Object? artistName = null,
    Object? mediaFile = null,
  }) {
    return _then(_$PlinkoMusicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      mediaFile: null == mediaFile
          ? _value.mediaFile
          : mediaFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlinkoMusicImpl implements _PlinkoMusic {
  const _$PlinkoMusicImpl(
      {required this.id,
      required this.songName,
      required this.artistName,
      required this.mediaFile});

  factory _$PlinkoMusicImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlinkoMusicImplFromJson(json);

  @override
  final String id;
  @override
  final String songName;
  @override
  final String artistName;
  @override
  final String mediaFile;

  @override
  String toString() {
    return 'PlinkoMusic(id: $id, songName: $songName, artistName: $artistName, mediaFile: $mediaFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlinkoMusicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.songName, songName) ||
                other.songName == songName) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.mediaFile, mediaFile) ||
                other.mediaFile == mediaFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, songName, artistName, mediaFile);

  /// Create a copy of PlinkoMusic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlinkoMusicImplCopyWith<_$PlinkoMusicImpl> get copyWith =>
      __$$PlinkoMusicImplCopyWithImpl<_$PlinkoMusicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlinkoMusicImplToJson(
      this,
    );
  }
}

abstract class _PlinkoMusic implements PlinkoMusic {
  const factory _PlinkoMusic(
      {required final String id,
      required final String songName,
      required final String artistName,
      required final String mediaFile}) = _$PlinkoMusicImpl;

  factory _PlinkoMusic.fromJson(Map<String, dynamic> json) =
      _$PlinkoMusicImpl.fromJson;

  @override
  String get id;
  @override
  String get songName;
  @override
  String get artistName;
  @override
  String get mediaFile;

  /// Create a copy of PlinkoMusic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlinkoMusicImplCopyWith<_$PlinkoMusicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
