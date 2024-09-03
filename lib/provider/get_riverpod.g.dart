// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$surahNotifierHash() => r'60e927d398438367c72f8a0b7c008ee95e894b94';

/// See also [SurahNotifier].
@ProviderFor(SurahNotifier)
final surahNotifierProvider =
    AutoDisposeAsyncNotifierProvider<SurahNotifier, List<SurahModels>>.internal(
  SurahNotifier.new,
  name: r'surahNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$surahNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SurahNotifier = AutoDisposeAsyncNotifier<List<SurahModels>>;
String _$ayatNotifierHash() => r'5a21eb231db73ff9ad49359abc9be93eb83edd83';

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

abstract class _$AyatNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<AyatModels>> {
  late final int surahNumber;

  FutureOr<List<AyatModels>> build(
    int surahNumber,
  );
}

/// See also [AyatNotifier].
@ProviderFor(AyatNotifier)
const ayatNotifierProvider = AyatNotifierFamily();

/// See also [AyatNotifier].
class AyatNotifierFamily extends Family<AsyncValue<List<AyatModels>>> {
  /// See also [AyatNotifier].
  const AyatNotifierFamily();

  /// See also [AyatNotifier].
  AyatNotifierProvider call(
    int surahNumber,
  ) {
    return AyatNotifierProvider(
      surahNumber,
    );
  }

  @override
  AyatNotifierProvider getProviderOverride(
    covariant AyatNotifierProvider provider,
  ) {
    return call(
      provider.surahNumber,
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
  String? get name => r'ayatNotifierProvider';
}

/// See also [AyatNotifier].
class AyatNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AyatNotifier, List<AyatModels>> {
  /// See also [AyatNotifier].
  AyatNotifierProvider(
    int surahNumber,
  ) : this._internal(
          () => AyatNotifier()..surahNumber = surahNumber,
          from: ayatNotifierProvider,
          name: r'ayatNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ayatNotifierHash,
          dependencies: AyatNotifierFamily._dependencies,
          allTransitiveDependencies:
              AyatNotifierFamily._allTransitiveDependencies,
          surahNumber: surahNumber,
        );

  AyatNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.surahNumber,
  }) : super.internal();

  final int surahNumber;

  @override
  FutureOr<List<AyatModels>> runNotifierBuild(
    covariant AyatNotifier notifier,
  ) {
    return notifier.build(
      surahNumber,
    );
  }

  @override
  Override overrideWith(AyatNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AyatNotifierProvider._internal(
        () => create()..surahNumber = surahNumber,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        surahNumber: surahNumber,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AyatNotifier, List<AyatModels>>
      createElement() {
    return _AyatNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AyatNotifierProvider && other.surahNumber == surahNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, surahNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AyatNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<AyatModels>> {
  /// The parameter `surahNumber` of this provider.
  int get surahNumber;
}

class _AyatNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AyatNotifier,
        List<AyatModels>> with AyatNotifierRef {
  _AyatNotifierProviderElement(super.provider);

  @override
  int get surahNumber => (origin as AyatNotifierProvider).surahNumber;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
