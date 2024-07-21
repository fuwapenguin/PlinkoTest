import 'package:go_router/go_router.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:plinko_test/presentation/routing/routing_names.dart';
import 'package:plinko_test/presentation/screens/player/music_player_screen.dart';

class PlinkoRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: RoutingNames.musicPlayer.name,
        builder: (context, state) {
          List<PlinkoMusic>? musicData = state.extra as List<PlinkoMusic>?;
          return MusicPlayerScreen(
            musicData: musicData,
          );
        },
      ),
    ],
  );
}