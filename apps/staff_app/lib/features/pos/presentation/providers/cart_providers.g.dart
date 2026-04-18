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
    extends $NotifierProvider<PosCart, Map<String, DraftItem>> {
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
  Override overrideWithValue(Map<String, DraftItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, DraftItem>>(value),
    );
  }
}

String _$posCartHash() => r'cb40195fd06e69bd16b34fea7f1d04dfb4875ea7';

abstract class _$PosCart extends $Notifier<Map<String, DraftItem>> {
  Map<String, DraftItem> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<Map<String, DraftItem>, Map<String, DraftItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, DraftItem>, Map<String, DraftItem>>,
              Map<String, DraftItem>,
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

String _$cartTotalHash() => r'7c1e9890a23b752c38d76c9b97d2ccacb3db133a';
