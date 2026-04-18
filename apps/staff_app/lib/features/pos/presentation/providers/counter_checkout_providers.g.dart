// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_checkout_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoadedOrder)
final loadedOrderProvider = LoadedOrderProvider._();

final class LoadedOrderProvider
    extends $NotifierProvider<LoadedOrder, OrderResponse?> {
  LoadedOrderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadedOrderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadedOrderHash();

  @$internal
  @override
  LoadedOrder create() => LoadedOrder();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderResponse? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderResponse?>(value),
    );
  }
}

String _$loadedOrderHash() => r'08132ac2e7de165c6911d00d82926e3a47534ddc';

abstract class _$LoadedOrder extends $Notifier<OrderResponse?> {
  OrderResponse? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OrderResponse?, OrderResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderResponse?, OrderResponse?>,
              OrderResponse?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedPaymentMethod)
final selectedPaymentMethodProvider = SelectedPaymentMethodProvider._();

final class SelectedPaymentMethodProvider
    extends $NotifierProvider<SelectedPaymentMethod, String> {
  SelectedPaymentMethodProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedPaymentMethodProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedPaymentMethodHash();

  @$internal
  @override
  SelectedPaymentMethod create() => SelectedPaymentMethod();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedPaymentMethodHash() =>
    r'c27dc7592c8d76427ac43fcea022b2dcb5a557f1';

abstract class _$SelectedPaymentMethod extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(productBatches)
final productBatchesProvider = ProductBatchesFamily._();

final class ProductBatchesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BatchDetailResponse>>,
          List<BatchDetailResponse>,
          FutureOr<List<BatchDetailResponse>>
        >
    with
        $FutureModifier<List<BatchDetailResponse>>,
        $FutureProvider<List<BatchDetailResponse>> {
  ProductBatchesProvider._({
    required ProductBatchesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'productBatchesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productBatchesHash();

  @override
  String toString() {
    return r'productBatchesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<BatchDetailResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BatchDetailResponse>> create(Ref ref) {
    final argument = this.argument as String;
    return productBatches(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductBatchesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productBatchesHash() => r'00652af003dca73f3153073a1dddcdd0b3076a7b';

final class ProductBatchesFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<List<BatchDetailResponse>>, String> {
  ProductBatchesFamily._()
    : super(
        retry: null,
        name: r'productBatchesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductBatchesProvider call(String variantId) =>
      ProductBatchesProvider._(argument: variantId, from: this);

  @override
  String toString() => r'productBatchesProvider';
}

@ProviderFor(CounterCheckoutNotifier)
final counterCheckoutNotifier = CounterCheckoutNotifierProvider._();

final class CounterCheckoutNotifierProvider
    extends $NotifierProvider<CounterCheckoutNotifier, AsyncValue<void>> {
  CounterCheckoutNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterCheckoutNotifier',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterCheckoutNotifierHash();

  @$internal
  @override
  CounterCheckoutNotifier create() => CounterCheckoutNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$counterCheckoutNotifierHash() =>
    r'48c44ca191d0326c87ae80faf09e0ed955ce9351';

abstract class _$CounterCheckoutNotifier extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
