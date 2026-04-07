// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(voucherRepository)
final voucherRepositoryProvider = VoucherRepositoryProvider._();

final class VoucherRepositoryProvider
    extends $FunctionalProvider<VoucherRepository, VoucherRepository, VoucherRepository>
    with $Provider<VoucherRepository> {
  VoucherRepositoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'voucherRepositoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$voucherRepositoryHash();

  @$internal
  @override
  $ProviderElement<VoucherRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VoucherRepository create(Ref ref) => voucherRepository(ref);
}

String _$voucherRepositoryHash() => r'voucher_repo_hash';

@ProviderFor(availableVouchers)
final availableVouchersProvider = AvailableVouchersProvider._();

final class AvailableVouchersProvider
    extends $FunctionalProvider<AsyncValue<List<Voucher>>, List<Voucher>, FutureOr<List<Voucher>>>
    with $FutureModifier<List<Voucher>>, $FutureProvider<List<Voucher>> {
  AvailableVouchersProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'availableVouchersProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$availableVouchersHash();

  @$internal
  @override
  $FutureProviderElement<List<Voucher>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Voucher>> create(Ref ref) => availableVouchers(ref);
}

String _$availableVouchersHash() => r'available_vouchers_hash';

@ProviderFor(myVouchers)
final myVouchersProvider = MyVouchersProvider._();

final class MyVouchersProvider
    extends $FunctionalProvider<AsyncValue<List<Voucher>>, List<Voucher>, FutureOr<List<Voucher>>>
    with $FutureModifier<List<Voucher>>, $FutureProvider<List<Voucher>> {
  MyVouchersProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'myVouchersProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myVouchersHash();

  @$internal
  @override
  $FutureProviderElement<List<Voucher>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Voucher>> create(Ref ref) => myVouchers(ref);
}

String _$myVouchersHash() => r'my_vouchers_hash';
