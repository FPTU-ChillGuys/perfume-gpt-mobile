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
