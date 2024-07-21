import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marquee/marquee.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:plinko_test/presentation/screens/player/music_player_controller.dart';
import 'package:plinko_test/presentation/styling/plinko_theme.dart';
import 'package:plinko_test/presentation/styling/spacing_styles.dart';
import 'package:plinko_test/presentation/styling/text_style_context.dart';
import 'package:plinko_test/presentation/widgets/form/plinko_button.dart';
import 'package:plinko_test/presentation/widgets/music/music_player_component.dart';
import 'package:plinko_test/presentation/widgets/scaffolds/plinko_scaffold.dart';

class MusicPlayerScreen extends ConsumerStatefulWidget {
  const MusicPlayerScreen({
    super.key,
    required this.musicData,
  });

  final List<PlinkoMusic>? musicData;

  @override
  ConsumerState<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends ConsumerState<MusicPlayerScreen> {
  List<PlinkoMusic> allMusic = [];
  int currentIndex = 0;

  void goNextSong() {
    setState(() {
      currentIndex = currentIndex + 1;
      if(currentIndex == allMusic.length) {
        currentIndex = 0;
      }
    });
  }

  void goPreviousSong() {
    setState(() {
      currentIndex = currentIndex - 1;
      if(currentIndex < 0) {
        currentIndex = allMusic.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final music = ref.watch(musicPlayerControllerProvider(widget.musicData));
    music.whenOrNull(
      data: (data) {
        allMusic = data;
      },
      error: (error, stack) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Something went wrong: ${error.toString()}'),
            ),
          );
        });
      },
    );

    return PlinkoScaffold(
      loading: music.isLoading,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SpacingStyles.mediumSpacing),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Music',
                    style: context.textStyle.bodyLarge,
                  ),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      style: context.textStyle.bodyMedium,
                      children: <TextSpan>[
                        const TextSpan(text: '237 '),
                        TextSpan(text: 'Online', style: TextStyle(color: context.color.secondary)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: SpacingStyles.mediumSpacing,
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: PlinkoButton(
                  label: 'Back to Plinko',
                  onpPressed: () {

                  },
                  textStyle: context.textStyle.headlineSmall,
                ),
              ),
              const SizedBox(
                height: SpacingStyles.mediumSpacing,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 48,
                    child: Marquee(
                      text: allMusic.isNotEmpty? allMusic[currentIndex].songName : 'No name found',
                      startAfter: const Duration(seconds: 2),
                      pauseAfterRound: const Duration(seconds: 2),
                      style: context.textStyle.headlineMedium,
                      blankSpace: SpacingStyles.extraLargeSpacing,
                      showFadingOnlyWhenScrolling: false,
                      fadingEdgeEndFraction: 0.25,
                    ),
                  ),
                  Text(
                    allMusic.isNotEmpty? allMusic[currentIndex].artistName : 'No name found',
                    style: context.textStyle.bodyMedium!.copyWith(
                      color: context.color.secondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: SpacingStyles.mediumSpacing,
              ),
              if(allMusic.isNotEmpty) MusicPlayerComponent(
                music: allMusic[currentIndex],
                onNextPressed: () {
                  goNextSong();
                },
                onPreviousPressed: () {
                  goPreviousSong();
                },
              ),

              const SizedBox(
                height: SpacingStyles.extraLargeSpacing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
