import 'dart:io';

import 'package:flutter/services.dart';
import 'package:just_waveform/just_waveform.dart';
import 'package:path_provider/path_provider.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:path/path.dart' as p;

part 'audio_waveform_plinko_controller.g.dart';

@riverpod
class AudioWaveformPlinkoController extends _$AudioWaveformPlinkoController {
  final progressStream = BehaviorSubject<WaveformProgress>();

  @override
  Future<BehaviorSubject<WaveformProgress>> build(PlinkoMusic music) async {

    return await loadWaveform(music);
  }

  Future<BehaviorSubject<WaveformProgress>> loadWaveform(PlinkoMusic music) async {
    final audioFile = File(p.join((await getTemporaryDirectory()).path, 'waveform.mp3'));
    state = const AsyncLoading();
    try {
      await audioFile.writeAsBytes((await rootBundle.load('assets/${music.mediaFile}')).buffer.asUint8List());
      final waveFile = File(p.join((await getTemporaryDirectory()).path, 'waveform.wave'));
      JustWaveform.extract(audioInFile: audioFile, waveOutFile: waveFile).listen(
        progressStream.add,
        onError: progressStream.addError,
      );
      state = AsyncData(progressStream);
    } catch (e) {
      progressStream.addError(e);
      state = AsyncError(e.toString(), StackTrace.current);
    }
    return progressStream;
  }
}