// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addressRepository)
final addressRepositoryProvider = AddressRepositoryProvider._();

final class AddressRepositoryProvider
    extends
        $FunctionalProvider<
          AddressRepository,
          AddressRepository,
          AddressRepository
        >
    with $Provider<AddressRepository> {
  AddressRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressRepositoryHash();

  @$internal
  @override
  $ProviderElement<AddressRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddressRepository create(Ref ref) {
    return addressRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddressRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddressRepository>(value),
    );
  }
}

String _$addressRepositoryHash() => r'cd2b22d4ee90d714134a9b9c6f99138c80b73a6d';

@ProviderFor(AddressList)
final addressListProvider = AddressListProvider._();

final class AddressListProvider
    extends $AsyncNotifierProvider<AddressList, List<Address>> {
  AddressListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressListHash();

  @$internal
  @override
  AddressList create() => AddressList();
}

String _$addressListHash() => r'773614a24e5779e04894a99c94a03fe950b9521b';

abstract class _$AddressList extends $AsyncNotifier<List<Address>> {
  FutureOr<List<Address>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Address>>, List<Address>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Address>>, List<Address>>,
              AsyncValue<List<Address>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
