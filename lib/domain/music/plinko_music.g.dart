// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plinko_music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlinkoMusicImpl _$$PlinkoMusicImplFromJson(Map<String, dynamic> json) =>
    _$PlinkoMusicImpl(
      id: json['id'] as String,
      songName: json['songName'] as String,
      artistName: json['artistName'] as String,
      mediaFile: json['mediaFile'] as String,
    );

Map<String, dynamic> _$$PlinkoMusicImplToJson(_$PlinkoMusicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'songName': instance.songName,
      'artistName': instance.artistName,
      'mediaFile': instance.mediaFile,
    };
