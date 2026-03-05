// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PosCart)
final posCartProvider = PosCartProvider._();

final class PosCartProvider
    extends $NotifierProvider<PosCart, Map<String, CartItem>> {
  PosCartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'posCartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$posCartHash();

  @$internal
  @override
  PosCart create() => PosCart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, CartItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, CartItem>>(value),
    );
  }
}

String _$posCartHash() => r'dd99e04d28db1f90469ae6689789c16817d5fe9a';

abstract class _$PosCart extends $Notifier<Map<String, CartItem>> {
  Map<String, CartItem> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<String, CartItem>, Map<String, CartItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, CartItem>, Map<String, CartItem>>,
              Map<String, CartItem>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(cartTotal)
final cartTotalProvider = CartTotalProvider._();

final class CartTotalProvider
    extends $FunctionalProvider<double, double, double>
    with $Provider<double> {
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
  $ProviderElement<double> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double create(Ref ref) {
    return cartTotal(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$cartTotalHash() => r'cd154a235aeffbace26cd04fd2e3f5bf477a2d4c';
