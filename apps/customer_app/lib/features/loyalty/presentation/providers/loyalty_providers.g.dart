// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(loyaltyRepository)
final loyaltyRepositoryProvider = LoyaltyRepositoryProvider._();

final class LoyaltyRepositoryProvider
    extends $FunctionalProvider<LoyaltyRepository, LoyaltyRepository, LoyaltyRepository>
    with $Provider<LoyaltyRepository> {
  LoyaltyRepositoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'loyaltyRepositoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loyaltyRepositoryHash();

  @$internal
  @override
  $ProviderElement<LoyaltyRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoyaltyRepository create(Ref ref) => loyaltyRepository(ref);
}

String _$loyaltyRepositoryHash() => r'loyalty_repo_hash';

@ProviderFor(loyaltyTotal)
final loyaltyTotalProvider = LoyaltyTotalProvider._();

final class LoyaltyTotalProvider
    extends $FunctionalProvider<AsyncValue<LoyaltyTotal>, LoyaltyTotal, FutureOr<LoyaltyTotal>>
    with $FutureModifier<LoyaltyTotal>, $FutureProvider<LoyaltyTotal> {
  LoyaltyTotalProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'loyaltyTotalProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loyaltyTotalHash();

  @$internal
  @override
  $FutureProviderElement<LoyaltyTotal> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<LoyaltyTotal> create(Ref ref) => loyaltyTotal(ref);
}

String _$loyaltyTotalHash() => r'loyalty_total_hash';

@ProviderFor(loyaltyHistory)
final loyaltyHistoryProvider = LoyaltyHistoryProvider._();

final class LoyaltyHistoryProvider
    extends $FunctionalProvider<AsyncValue<List<LoyaltyTransaction>>, List<LoyaltyTransaction>, FutureOr<List<LoyaltyTransaction>>>
    with $FutureModifier<List<LoyaltyTransaction>>, $FutureProvider<List<LoyaltyTransaction>> {
  LoyaltyHistoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'loyaltyHistoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loyaltyHistoryHash();

  @$internal
  @override
  $FutureProviderElement<List<LoyaltyTransaction>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<LoyaltyTransaction>> create(Ref ref) => loyaltyHistory(ref);
}

String _$loyaltyHistoryHash() => r'loyalty_history_hash';
