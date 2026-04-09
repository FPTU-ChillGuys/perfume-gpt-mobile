// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(vnBanks)
final vnBanksProvider = VnBanksProvider._();

final class VnBanksProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<VnBank>>,
          List<VnBank>,
          FutureOr<List<VnBank>>
        >
    with $FutureModifier<List<VnBank>>, $FutureProvider<List<VnBank>> {
  VnBanksProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vnBanksProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$vnBanksHash();

  @$internal
  @override
  $FutureProviderElement<List<VnBank>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<VnBank>> create(Ref ref) {
    return vnBanks(ref);
  }
}

String _$vnBanksHash() => r'7fe9c5c025328767e932682671f8056d4694ce30';
