// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loyaltyRepository)
final loyaltyRepositoryProvider = LoyaltyRepositoryProvider._();

final class LoyaltyRepositoryProvider
    extends
        $FunctionalProvider<
          LoyaltyRepository,
          LoyaltyRepository,
          LoyaltyRepository
        >
    with $Provider<LoyaltyRepository> {
  LoyaltyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loyaltyRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loyaltyRepositoryHash();

  @$internal
  @override
  $ProviderElement<LoyaltyRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LoyaltyRepository create(Ref ref) {
    return loyaltyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoyaltyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoyaltyRepository>(value),
    );
  }
}

String _$loyaltyRepositoryHash() => r'f2d4a04d84063b7562900069ebf3523d1e20fbf7';

@ProviderFor(loyaltyTotal)
final loyaltyTotalProvider = LoyaltyTotalProvider._();

final class LoyaltyTotalProvider
    extends
        $FunctionalProvider<
          AsyncValue<LoyaltyTotal>,
          LoyaltyTotal,
          FutureOr<LoyaltyTotal>
        >
    with $FutureModifier<LoyaltyTotal>, $FutureProvider<LoyaltyTotal> {
  LoyaltyTotalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loyaltyTotalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loyaltyTotalHash();

  @$internal
  @override
  $FutureProviderElement<LoyaltyTotal> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LoyaltyTotal> create(Ref ref) {
    return loyaltyTotal(ref);
  }
}

String _$loyaltyTotalHash() => r'03bf0eda519c21949b3ff3f43ac1a695b24cceba';

@ProviderFor(loyaltyHistory)
final loyaltyHistoryProvider = LoyaltyHistoryProvider._();

final class LoyaltyHistoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LoyaltyTransaction>>,
          List<LoyaltyTransaction>,
          FutureOr<List<LoyaltyTransaction>>
        >
    with
        $FutureModifier<List<LoyaltyTransaction>>,
        $FutureProvider<List<LoyaltyTransaction>> {
  LoyaltyHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loyaltyHistoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loyaltyHistoryHash();

  @$internal
  @override
  $FutureProviderElement<List<LoyaltyTransaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LoyaltyTransaction>> create(Ref ref) {
    return loyaltyHistory(ref);
  }
}

String _$loyaltyHistoryHash() => r'd5377e72943c326580ee7320e79bef0aa200216d';
