// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_waveform_plinko_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioWaveformPlinkoControllerHash() =>
    r'e1e0f232e5f2c78024fa958e9980b21a8b20710b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AudioWaveformPlinkoController
    extends BuildlessAutoDisposeAsyncNotifier<
        BehaviorSubject<WaveformProgress>> {
  late final PlinkoMusic music;

  FutureOr<BehaviorSubject<WaveformProgress>> build(
    PlinkoMusic music,
  );
}

/// See also [AudioWaveformPlinkoController].
@ProviderFor(AudioWaveformPlinkoController)
const audioWaveformPlinkoControllerProvider =
    AudioWaveformPlinkoControllerFamily();

/// See also [AudioWaveformPlinkoController].
class AudioWaveformPlinkoControllerFamily
    extends Family<AsyncValue<BehaviorSubject<WaveformProgress>>> {
  /// See also [AudioWaveformPlinkoController].
  const AudioWaveformPlinkoControllerFamily();

  /// See also [AudioWaveformPlinkoController].
  AudioWaveformPlinkoControllerProvider call(
    PlinkoMusic music,
  ) {
    return AudioWaveformPlinkoControllerProvider(
      music,
    );
  }

  @override
  AudioWaveformPlinkoControllerProvider getProviderOverride(
    covariant AudioWaveformPlinkoControllerProvider provider,
  ) {
    return call(
      provider.music,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'audioWaveformPlinkoControllerProvider';
}

/// See also [AudioWaveformPlinkoController].
class AudioWaveformPlinkoControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AudioWaveformPlinkoController,
        BehaviorSubject<WaveformProgress>> {
  /// See also [AudioWaveformPlinkoController].
  AudioWaveformPlinkoControllerProvider(
    PlinkoMusic music,
  ) : this._internal(
          () => AudioWaveformPlinkoController()..music = music,
          from: audioWaveformPlinkoControllerProvider,
          name: r'audioWaveformPlinkoControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$audioWaveformPlinkoControllerHash,
          dependencies: AudioWaveformPlinkoControllerFamily._dependencies,
          allTransitiveDependencies:
              AudioWaveformPlinkoControllerFamily._allTransitiveDependencies,
          music: music,
        );

  AudioWaveformPlinkoControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.music,
  }) : super.internal();

  final PlinkoMusic music;

  @override
  FutureOr<BehaviorSubject<WaveformProgress>> runNotifierBuild(
    covariant AudioWaveformPlinkoController notifier,
  ) {
    return notifier.build(
      music,
    );
  }

  @override
  Override overrideWith(AudioWaveformPlinkoController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AudioWaveformPlinkoControllerProvider._internal(
        () => create()..music = music,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        music: music,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AudioWaveformPlinkoController,
      BehaviorSubject<WaveformProgress>> createElement() {
    return _AudioWaveformPlinkoControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AudioWaveformPlinkoControllerProvider &&
        other.music == music;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, music.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AudioWaveformPlinkoControllerRef
    on AutoDisposeAsyncNotifierProviderRef<BehaviorSubject<WaveformProgress>> {
  /// The parameter `music` of this provider.
  PlinkoMusic get music;
}

class _AudioWaveformPlinkoControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AudioWaveformPlinkoController, BehaviorSubject<WaveformProgress>>
    with AudioWaveformPlinkoControllerRef {
  _AudioWaveformPlinkoControllerProviderElement(super.provider);

  @override
  PlinkoMusic get music =>
      (origin as AudioWaveformPlinkoControllerProvider).music;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
