// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(inventoryList)
final inventoryListProvider = InventoryListProvider._();

final class InventoryListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  InventoryListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryListHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return inventoryList(ref);
  }
}

String _$inventoryListHash() => r'159a149c351823a1c066640d8c58c0f2c5917f85';

@ProviderFor(variantBatches)
final variantBatchesProvider = VariantBatchesFamily._();

final class VariantBatchesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BatchDetailResponse>>,
          List<BatchDetailResponse>,
          FutureOr<List<BatchDetailResponse>>
        >
    with
        $FutureModifier<List<BatchDetailResponse>>,
        $FutureProvider<List<BatchDetailResponse>> {
  VariantBatchesProvider._({
    required VariantBatchesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'variantBatchesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$variantBatchesHash();

  @override
  String toString() {
    return r'variantBatchesProvider'
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
    return variantBatches(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VariantBatchesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$variantBatchesHash() => r'b7c1128b62d165f88bd279037cf3b5cc20fa7069';

final class VariantBatchesFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<List<BatchDetailResponse>>, String> {
  VariantBatchesFamily._()
    : super(
        retry: null,
        name: r'variantBatchesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VariantBatchesProvider call(String variantId) =>
      VariantBatchesProvider._(argument: variantId, from: this);

  @override
  String toString() => r'variantBatchesProvider';
}

@ProviderFor(InventorySearchQuery)
final inventorySearchQueryProvider = InventorySearchQueryProvider._();

final class InventorySearchQueryProvider
    extends $NotifierProvider<InventorySearchQuery, String> {
  InventorySearchQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventorySearchQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventorySearchQueryHash();

  @$internal
  @override
  InventorySearchQuery create() => InventorySearchQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$inventorySearchQueryHash() =>
    r'054035fa03b7ce3eef8a85598ceb622e9fc5c664';

abstract class _$InventorySearchQuery extends $Notifier<String> {
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

@ProviderFor(filteredInventoryList)
final filteredInventoryListProvider = FilteredInventoryListProvider._();

final class FilteredInventoryListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  FilteredInventoryListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredInventoryListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredInventoryListHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return filteredInventoryList(ref);
  }
}

String _$filteredInventoryListHash() =>
    r'6d40db07a50214f9d293de079b413f1e44b1906c';
