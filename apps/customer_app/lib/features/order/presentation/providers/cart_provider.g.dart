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

String _$cartRepositoryHash() => r'4aac4d78d2f271206dd0b2849554504ede3460c5';

@ProviderFor(Cart)
final cartProvider = CartProvider._();

final class CartProvider extends $AsyncNotifierProvider<Cart, List<CartItem>> {
  CartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  Cart create() => Cart();
}

String _$cartHash() => r'41c9c01a52388ba346059f60eb672633e3c0d25d';

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

@ProviderFor(SelectedCartItemIds)
final selectedCartItemIdsProvider = SelectedCartItemIdsProvider._();

final class SelectedCartItemIdsProvider
    extends $NotifierProvider<SelectedCartItemIds, Set<String>> {
  SelectedCartItemIdsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCartItemIdsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCartItemIdsHash();

  @$internal
  @override
  SelectedCartItemIds create() => SelectedCartItemIds();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }
}

String _$selectedCartItemIdsHash() =>
    r'e966b5af25974b942e3b7b113089a2eae287c32b';

abstract class _$SelectedCartItemIds extends $Notifier<Set<String>> {
  Set<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Set<String>, Set<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<String>, Set<String>>,
              Set<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(selectedCartTotal)
final selectedCartTotalProvider = SelectedCartTotalProvider._();

final class SelectedCartTotalProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartTotal>,
          CartTotal,
          FutureOr<CartTotal>
        >
    with $FutureModifier<CartTotal>, $FutureProvider<CartTotal> {
  SelectedCartTotalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCartTotalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCartTotalHash();

  @$internal
  @override
  $FutureProviderElement<CartTotal> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<CartTotal> create(Ref ref) {
    return selectedCartTotal(ref);
  }
}

String _$selectedCartTotalHash() => r'2f9822f7607fef14374811d6d4ed80cd98e9187d';

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

String _$cartTotalHash() => r'5cce10c7226f444ed0f66de246d65f9b0dace152';
