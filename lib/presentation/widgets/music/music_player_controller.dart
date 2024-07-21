import 'package:audioplayers/audioplayers.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'music_player_controller.g.dart';

@riverpod
class MusicPlayerController extends _$MusicPlayerController {
  late AudioPlayer player;

  @override
  bool build() {
    player = AudioPlayer();
    return false;
  }

  void playPressed(PlinkoMusic music, {bool stop = false}) {
    if(stop) {
      state = false;
      player.stop();
      return;
    }
    state = !state;
    if(state) {
      player.play(AssetSource(music.mediaFile));
    } else {
      player.pause();
    }
  }

  void adjustVolume(double volume) async {
    player.setVolume(volume);
    ref.notifyListeners();
  }
}