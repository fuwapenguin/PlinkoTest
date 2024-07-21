import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'music_mock_repository.g.dart';

@Riverpod(keepAlive: true)
MusicMockRepository musicMockRepository(MusicMockRepositoryRef ref) {
  return MusicMockRepository();
}

class MusicMockRepository {
  Future<List<Map<String, dynamic>>> getMockMusic() async {
    List<Map<String, dynamic>> musicData = [
      const PlinkoMusic(
        id: '0',
        artistName: 'Seth Pantalony',
        songName: 'Tru Tones - Dancing (Feat. Roger Thornhill)',
        mediaFile: 'music/Tru Tones - Dancing (Roger Thornhill Edit).mp3',
      ).toJson(),
      const PlinkoMusic(
        id: '1',
        artistName: 'Chanmina',
        songName: 'CHANMINA & ASH ISLAND',
        mediaFile: 'music/CHANMINA and ASH ISLAND.mp3',
      ).toJson(),
    ];
    return musicData;
  }
}