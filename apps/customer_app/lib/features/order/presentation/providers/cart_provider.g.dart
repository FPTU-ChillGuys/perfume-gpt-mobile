// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$cartRepositoryHash() => r'576766dfc309c0c2f29e9154f496ed8dcf98e74f';

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

String _$cartHash() => r'22e15a759210218c776a3f8935351f03d89b1dce';

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

String _$cartTotalHash() => r'84747cc3c79eb65b51f33fcb448fd6d9f4a0306e';
