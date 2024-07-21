import 'package:freezed_annotation/freezed_annotation.dart';

part 'plinko_music.freezed.dart';
part 'plinko_music.g.dart';

@freezed
class PlinkoMusic with _$PlinkoMusic {
  const factory PlinkoMusic({
    required String id,
    required String songName,
    required String artistName,
    required String mediaFile,
  }) = _PlinkoMusic;

  factory PlinkoMusic.fromJson(Map<String, Object?> json) => _$PlinkoMusicFromJson(json);
}