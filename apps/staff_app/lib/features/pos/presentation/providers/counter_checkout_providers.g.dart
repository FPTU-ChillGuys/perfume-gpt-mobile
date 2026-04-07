// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_checkout_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$draftItemsHash() => r'draft_items_hash';

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

String _$draftTotalHash() => r'draft_total_hash';

@ProviderFor(LoadedOrder)
final loadedOrderProvider = LoadedOrderProvider._();

final class LoadedOrderProvider
    extends $NotifierProvider<LoadedOrder, Map<String, dynamic>?> {
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
  Override overrideWithValue(Map<String, dynamic>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, dynamic>?>(value),
    );
  }
}

String _$loadedOrderHash() => r'loaded_order_hash';

abstract class _$LoadedOrder extends $Notifier<Map<String, dynamic>?> {
  Map<String, dynamic>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<String, dynamic>?, Map<String, dynamic>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, dynamic>?, Map<String, dynamic>?>,
              Map<String, dynamic>?,
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

String _$selectedPaymentMethodHash() => r'selected_payment_method_hash';

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

@ProviderFor(CounterCheckoutNotifier)
final counterCheckoutNotifierProvider = CounterCheckoutNotifierProvider._();

final class CounterCheckoutNotifierProvider
    extends $NotifierProvider<CounterCheckoutNotifier, AsyncValue<void>> {
  CounterCheckoutNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterCheckoutNotifierProvider',
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

String _$counterCheckoutNotifierHash() => r'counter_checkout_notifier_hash';

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
