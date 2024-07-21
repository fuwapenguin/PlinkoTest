import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plinko_test/domain/music/plinko_music.dart';
import 'package:plinko_test/presentation/styling/plinko_theme.dart';
import 'package:plinko_test/presentation/styling/spacing_styles.dart';
import 'package:plinko_test/presentation/widgets/form/plinko_button.dart';
import 'package:plinko_test/presentation/widgets/music/audio_waveform_plinko.dart';
import 'package:plinko_test/presentation/widgets/music/music_player_controller.dart';

class MusicPlayerComponent extends ConsumerWidget {
  const MusicPlayerComponent({
    super.key,
    required this.music,
    required this.onNextPressed,
    required this.onPreviousPressed,
  });

  final PlinkoMusic music;
  final Function onNextPressed;
  final Function onPreviousPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlaying = ref.watch(musicPlayerControllerProvider);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SpacingStyles.mediumSpacing),
            gradient: LinearGradient(
                colors: context.color.cardGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
          child: AudioWaveformPlinko(
            music: music,
          ),
        ),
        const SizedBox(
          height: SpacingStyles.mediumSpacing,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 80,
              child: PlinkoButton(
                label: '',
                icon: Icons.fast_rewind_rounded,
                type: ButtonType.icon,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(80),
                  right: Radius.circular(SpacingStyles.mediumSpacing),
                ),
                onpPressed: (){
                  onPreviousPressed();
                  ref.watch(musicPlayerControllerProvider.notifier).playPressed(
                    music,
                    stop: true,
                  );
                },
              ),
            ),
            const SizedBox(
              width: SpacingStyles.smallSpacing,
            ),
            SizedBox(
              height: 80,
              child: PlinkoButton(
                label: '',
                icon: isPlaying? Icons.pause_rounded : Icons.play_arrow_rounded,
                active: isPlaying,
                type: ButtonType.icon,
                onpPressed: (){
                  ref.watch(musicPlayerControllerProvider.notifier).playPressed(
                    music,
                  );
                },
              ),
            ),
            const SizedBox(
              width: SpacingStyles.smallSpacing,
            ),
            SizedBox(
              height: 80,
              child: PlinkoButton(
                label: '',
                icon: Icons.fast_forward_rounded,
                type: ButtonType.icon,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(SpacingStyles.mediumSpacing),
                  right: Radius.circular(80),
                ),
                onpPressed: (){
                  onNextPressed();
                  ref.watch(musicPlayerControllerProvider.notifier).playPressed(
                    music,
                    stop: true,
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: SpacingStyles.extraLargeSpacing,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: SpacingStyles.mediumSpacing),
          child: Row(
            children: [
              Icon(
                Icons.volume_mute_rounded,
                color: context.color.tertiary,
              ),
              Expanded(
                child: Slider(
                  value: ref.watch(musicPlayerControllerProvider.notifier).player.volume,
                  activeColor: context.color.tertiary,
                  inactiveColor: context.color.secondary,
                  thumbColor: Colors.transparent,
                  overlayColor: WidgetStateColor.transparent,
                  onChanged: (double value) {
                    ref.watch(musicPlayerControllerProvider.notifier).adjustVolume(value);
                  },
                ),
              ),
              Icon(
                Icons.volume_up_rounded,
                color: context.color.tertiary,
              ),
            ],
          ),
        ),
      ]
    );
  }
}
