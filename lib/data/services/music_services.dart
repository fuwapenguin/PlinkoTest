import 'package:plinko_test/data/repositories/music_mock_repository.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'music_services.g.dart';

@Riverpod(keepAlive: true)
MusicServices musicServices(MusicServicesRef ref) {
  final MusicMockRepository musicMock = ref.watch(musicMockRepositoryProvider);
  return MusicServices(musicMock);
}

class MusicServices {
  final MusicMockRepository musicMock;
  MusicServices(this.musicMock);

  Future<List<PlinkoMusic>> getMusic() async {
    List<PlinkoMusic> music = [];
    try {
      List<Map<String, dynamic>> data = await musicMock.getMockMusic();
      for(Map<String, dynamic> rawSong in data) {
        music.add(PlinkoMusic.fromJson(rawSong));
      }
      return music;
    } catch(e) {
      rethrow;
    }
  }
}