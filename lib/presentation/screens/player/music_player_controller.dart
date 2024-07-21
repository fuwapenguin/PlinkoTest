import 'package:plinko_test/data/services/music_services.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'music_player_controller.g.dart';

@riverpod
class MusicPlayerController extends _$MusicPlayerController {

  @override
  FutureOr<List<PlinkoMusic>> build(List<PlinkoMusic>? musicData) async {
    if(musicData != null) {
      return musicData;
    }
    return await getMusic();
  }

  Future<List<PlinkoMusic>> getMusic() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.watch(musicServicesProvider).getMusic());
    return state.value?? [];
  }
}