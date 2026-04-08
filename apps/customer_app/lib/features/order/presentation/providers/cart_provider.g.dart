// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(localCartDataSource)
final localCartDataSourceProvider = LocalCartDataSourceProvider._();

final class LocalCartDataSourceProvider
    extends
        $FunctionalProvider<
          LocalCartDataSource,
          LocalCartDataSource,
          LocalCartDataSource
        >
    with $Provider<LocalCartDataSource> {
  LocalCartDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localCartDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localCartDataSourceHash();

  @$internal
  @override
  $ProviderElement<LocalCartDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocalCartDataSource create(Ref ref) {
    return localCartDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalCartDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalCartDataSource>(value),
    );
  }
}

String _$localCartDataSourceHash() =>
    r'ba8de7a46d7599253025257892860ce6744d5e70';

@ProviderFor(cartRepository)
final cartRepositoryProvider = CartRepositoryProvider._();

final class CartRepositoryProvider
    extends $FunctionalProvider<CartRepository, CartRepository, CartRepository>
    with $Provider<CartRepository> {
  CartRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartRepositoryHash();

  @$internal
  @override
  $ProviderElement<CartRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartRepository create(Ref ref) {
    return cartRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartRepository>(value),
    );
  }
}

String _$cartRepositoryHash() => r'7bd74daf8f982afa2863f5a00d95d8772c4d3ae6';

@ProviderFor(Cart)
final cartProvider = CartProvider._();

final class CartProvider extends $AsyncNotifierProvider<Cart, List<CartItem>> {
  CartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  Cart create() => Cart();
}

String _$cartHash() => r'37d506b5c4e91853c3ecbc11445360fcd97ddd89';

abstract class _$Cart extends $AsyncNotifier<List<CartItem>> {
  FutureOr<List<CartItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<CartItem>>, List<CartItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<CartItem>>, List<CartItem>>,
              AsyncValue<List<CartItem>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(cartTotal)
final cartTotalProvider = CartTotalProvider._();

final class CartTotalProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartTotal>,
          CartTotal,
          FutureOr<CartTotal>
        >
    with $FutureModifier<CartTotal>, $FutureProvider<CartTotal> {
  CartTotalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartTotalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartTotalHash();

  @$internal
  @override
  $FutureProviderElement<CartTotal> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<CartTotal> create(Ref ref) {
    return cartTotal(ref);
  }
}

String _$cartTotalHash() => r'2cbc3dc5dafe60af92a2188d871a604a685b3a8a';
