// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bestSellers)
final bestSellersProvider = BestSellersProvider._();

final class BestSellersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  BestSellersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bestSellersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bestSellersHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return bestSellers(ref);
  }
}

String _$bestSellersHash() => r'44b350e0e3107e437eaf5e6c6596a1a39816c032';

@ProviderFor(newArrivals)
final newArrivalsProvider = NewArrivalsProvider._();

final class NewArrivalsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  NewArrivalsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'newArrivalsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$newArrivalsHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return newArrivals(ref);
  }
}

String _$newArrivalsHash() => r'9003c1f2df7ec407e6f7cdc81d4d66f215c2b9d8';

@ProviderFor(activeCampaigns)
final activeCampaignsProvider = ActiveCampaignsProvider._();

final class ActiveCampaignsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CampaignLookup>>,
          List<CampaignLookup>,
          FutureOr<List<CampaignLookup>>
        >
    with
        $FutureModifier<List<CampaignLookup>>,
        $FutureProvider<List<CampaignLookup>> {
  ActiveCampaignsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeCampaignsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeCampaignsHash();

  @$internal
  @override
  $FutureProviderElement<List<CampaignLookup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CampaignLookup>> create(Ref ref) {
    return activeCampaigns(ref);
  }
}

String _$activeCampaignsHash() => r'95041399e77781ee0de25982419549b4c6b1edea';

@ProviderFor(campaignProducts)
final campaignProductsProvider = CampaignProductsFamily._();

final class CampaignProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  CampaignProductsProvider._({
    required CampaignProductsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'campaignProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$campaignProductsHash();

  @override
  String toString() {
    return r'campaignProductsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as String;
    return campaignProducts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CampaignProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$campaignProductsHash() => r'b620297eb55236bd22dc62d0877f31afd9ed24a8';

final class CampaignProductsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Product>>, String> {
  CampaignProductsFamily._()
    : super(
        retry: null,
        name: r'campaignProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CampaignProductsProvider call(String campaignId) =>
      CampaignProductsProvider._(argument: campaignId, from: this);

  @override
  String toString() => r'campaignProductsProvider';
}
