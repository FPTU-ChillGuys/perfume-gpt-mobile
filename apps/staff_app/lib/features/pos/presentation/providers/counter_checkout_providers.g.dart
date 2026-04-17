// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_checkout_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DraftItems)
final draftItemsProvider = DraftItemsProvider._();

final class DraftItemsProvider
    extends $NotifierProvider<DraftItems, List<DraftItem>> {
  DraftItemsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'draftItemsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$draftItemsHash();

  @$internal
  @override
  DraftItems create() => DraftItems();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<DraftItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<DraftItem>>(value),
    );
  }
}

String _$draftItemsHash() => r'e3682ed8c9af94d7b09e576e7e439f3fa3e6d90a';

abstract class _$DraftItems extends $Notifier<List<DraftItem>> {
  List<DraftItem> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<DraftItem>, List<DraftItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<DraftItem>, List<DraftItem>>,
              List<DraftItem>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(draftTotal)
final draftTotalProvider = DraftTotalProvider._();

final class DraftTotalProvider
    extends $FunctionalProvider<double, double, double>
    with $Provider<double> {
  DraftTotalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'draftTotalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$draftTotalHash();

  @$internal
  @override
  $ProviderElement<double> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double create(Ref ref) {
    return draftTotal(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$draftTotalHash() => r'e9dd918aa1b84e9538fca1be4845a0477151a391';

@ProviderFor(posCartSync)
final posCartSyncProvider = PosCartSyncProvider._();

final class PosCartSyncProvider extends $FunctionalProvider<void, void, void>
    with $Provider<void> {
  PosCartSyncProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'posCartSyncProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$posCartSyncHash();

  @$internal
  @override
  $ProviderElement<void> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  void create(Ref ref) {
    return posCartSync(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$posCartSyncHash() => r'761401e77f6199d71cb985c88cde4e66fe41c2ac';

@ProviderFor(LoadedOrder)
final loadedOrderProvider = LoadedOrderProvider._();

final class LoadedOrderProvider
    extends $NotifierProvider<LoadedOrder, UserOrderResponse?> {
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
  Override overrideWithValue(UserOrderResponse? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserOrderResponse?>(value),
    );
  }
}

String _$loadedOrderHash() => r'0678b19ddff0f4b6b4df5fb0f9ca82f4faac68bb';

abstract class _$LoadedOrder extends $Notifier<UserOrderResponse?> {
  UserOrderResponse? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<UserOrderResponse?, UserOrderResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserOrderResponse?, UserOrderResponse?>,
              UserOrderResponse?,
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
    r'6c1b4e49b5ab12bd605b27c324d23ab88390266d';

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
