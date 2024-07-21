// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_player_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$musicPlayerControllerHash() =>
    r'8f998e1c0557474b06e2c987b280c6d177ad1589';

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

abstract class _$MusicPlayerController
    extends BuildlessAutoDisposeAsyncNotifier<List<PlinkoMusic>> {
  late final List<PlinkoMusic>? musicData;

  FutureOr<List<PlinkoMusic>> build(
    List<PlinkoMusic>? musicData,
  );
}

/// See also [MusicPlayerController].
@ProviderFor(MusicPlayerController)
const musicPlayerControllerProvider = MusicPlayerControllerFamily();

/// See also [MusicPlayerController].
class MusicPlayerControllerFamily
    extends Family<AsyncValue<List<PlinkoMusic>>> {
  /// See also [MusicPlayerController].
  const MusicPlayerControllerFamily();

  /// See also [MusicPlayerController].
  MusicPlayerControllerProvider call(
    List<PlinkoMusic>? musicData,
  ) {
    return MusicPlayerControllerProvider(
      musicData,
    );
  }

  @override
  MusicPlayerControllerProvider getProviderOverride(
    covariant MusicPlayerControllerProvider provider,
  ) {
    return call(
      provider.musicData,
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
  String? get name => r'musicPlayerControllerProvider';
}

/// See also [MusicPlayerController].
class MusicPlayerControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MusicPlayerController,
        List<PlinkoMusic>> {
  /// See also [MusicPlayerController].
  MusicPlayerControllerProvider(
    List<PlinkoMusic>? musicData,
  ) : this._internal(
          () => MusicPlayerController()..musicData = musicData,
          from: musicPlayerControllerProvider,
          name: r'musicPlayerControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$musicPlayerControllerHash,
          dependencies: MusicPlayerControllerFamily._dependencies,
          allTransitiveDependencies:
              MusicPlayerControllerFamily._allTransitiveDependencies,
          musicData: musicData,
        );

  MusicPlayerControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.musicData,
  }) : super.internal();

  final List<PlinkoMusic>? musicData;

  @override
  FutureOr<List<PlinkoMusic>> runNotifierBuild(
    covariant MusicPlayerController notifier,
  ) {
    return notifier.build(
      musicData,
    );
  }

  @override
  Override overrideWith(MusicPlayerController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MusicPlayerControllerProvider._internal(
        () => create()..musicData = musicData,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        musicData: musicData,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MusicPlayerController,
      List<PlinkoMusic>> createElement() {
    return _MusicPlayerControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MusicPlayerControllerProvider &&
        other.musicData == musicData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, musicData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MusicPlayerControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<PlinkoMusic>> {
  /// The parameter `musicData` of this provider.
  List<PlinkoMusic>? get musicData;
}

class _MusicPlayerControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MusicPlayerController,
        List<PlinkoMusic>> with MusicPlayerControllerRef {
  _MusicPlayerControllerProviderElement(super.provider);

  @override
  List<PlinkoMusic>? get musicData =>
      (origin as MusicPlayerControllerProvider).musicData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
