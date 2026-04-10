// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(voucherRepository)
final voucherRepositoryProvider = VoucherRepositoryProvider._();

final class VoucherRepositoryProvider
    extends
        $FunctionalProvider<
          VoucherRepository,
          VoucherRepository,
          VoucherRepository
        >
    with $Provider<VoucherRepository> {
  VoucherRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'voucherRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$voucherRepositoryHash();

  @$internal
  @override
  $ProviderElement<VoucherRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  VoucherRepository create(Ref ref) {
    return voucherRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VoucherRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VoucherRepository>(value),
    );
  }
}

String _$voucherRepositoryHash() => r'e4b40aceefdb9b727294e2b05a7704333a161d6c';

@ProviderFor(availableVouchers)
final availableVouchersProvider = AvailableVouchersProvider._();

final class AvailableVouchersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Voucher>>,
          List<Voucher>,
          FutureOr<List<Voucher>>
        >
    with $FutureModifier<List<Voucher>>, $FutureProvider<List<Voucher>> {
  AvailableVouchersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'availableVouchersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$availableVouchersHash();

  @$internal
  @override
  $FutureProviderElement<List<Voucher>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Voucher>> create(Ref ref) {
    return availableVouchers(ref);
  }
}

String _$availableVouchersHash() => r'2f67525e902db0df4106891c4613a349a04a940d';

@ProviderFor(myVouchers)
final myVouchersProvider = MyVouchersProvider._();

final class MyVouchersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Voucher>>,
          List<Voucher>,
          FutureOr<List<Voucher>>
        >
    with $FutureModifier<List<Voucher>>, $FutureProvider<List<Voucher>> {
  MyVouchersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myVouchersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myVouchersHash();

  @$internal
  @override
  $FutureProviderElement<List<Voucher>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Voucher>> create(Ref ref) {
    return myVouchers(ref);
  }
}

String _$myVouchersHash() => r'de180caf3f540a8c5af55c9348681c24134b19e1';

@ProviderFor(redeemableVouchers)
final redeemableVouchersProvider = RedeemableVouchersProvider._();

final class RedeemableVouchersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Voucher>>,
          List<Voucher>,
          FutureOr<List<Voucher>>
        >
    with $FutureModifier<List<Voucher>>, $FutureProvider<List<Voucher>> {
  RedeemableVouchersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'redeemableVouchersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$redeemableVouchersHash();

  @$internal
  @override
  $FutureProviderElement<List<Voucher>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Voucher>> create(Ref ref) {
    return redeemableVouchers(ref);
  }
}

String _$redeemableVouchersHash() =>
    r'30964c6d1d08ac6251b3b7f6bdd2aa1b6f56bf55';
