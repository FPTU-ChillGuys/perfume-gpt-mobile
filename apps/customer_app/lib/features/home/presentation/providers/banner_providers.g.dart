// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bannerRepository)
final bannerRepositoryProvider = BannerRepositoryProvider._();

final class BannerRepositoryProvider
    extends
        $FunctionalProvider<
          BannerRepository,
          BannerRepository,
          BannerRepository
        >
    with $Provider<BannerRepository> {
  BannerRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bannerRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bannerRepositoryHash();

  @$internal
  @override
  $ProviderElement<BannerRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BannerRepository create(Ref ref) {
    return bannerRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BannerRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BannerRepository>(value),
    );
  }
}

String _$bannerRepositoryHash() => r'4f48a742c2964eb93de35251ae7693c934bd643f';

@ProviderFor(homeHeroBanners)
final homeHeroBannersProvider = HomeHeroBannersProvider._();

final class HomeHeroBannersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HomeBanner>>,
          List<HomeBanner>,
          FutureOr<List<HomeBanner>>
        >
    with $FutureModifier<List<HomeBanner>>, $FutureProvider<List<HomeBanner>> {
  HomeHeroBannersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeHeroBannersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeHeroBannersHash();

  @$internal
  @override
  $FutureProviderElement<List<HomeBanner>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HomeBanner>> create(Ref ref) {
    return homeHeroBanners(ref);
  }
}

String _$homeHeroBannersHash() => r'41a0d0eb440754ee5986b5debb0ac081339259f6';
