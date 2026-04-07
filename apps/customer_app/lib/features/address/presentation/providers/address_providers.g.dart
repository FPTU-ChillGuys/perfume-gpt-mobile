// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(addressRepository)
final addressRepositoryProvider = AddressRepositoryProvider._();

final class AddressRepositoryProvider
    extends $FunctionalProvider<AddressRepository, AddressRepository, AddressRepository>
    with $Provider<AddressRepository> {
  AddressRepositoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'addressRepositoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressRepositoryHash();

  @$internal
  @override
  $ProviderElement<AddressRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddressRepository create(Ref ref) => addressRepository(ref);
}

String _$addressRepositoryHash() => r'addr_repo_hash_placeholder';

@ProviderFor(AddressList)
final addressListProvider = AddressListProvider._();

final class AddressListProvider extends $AsyncNotifierProvider<AddressList, List<Address>> {
  AddressListProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'addressListProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressListHash();

  @$internal
  @override
  AddressList create() => AddressList();
}

String _$addressListHash() => r'addr_list_hash_placeholder';

abstract class _$AddressList extends $AsyncNotifier<List<Address>> {
  FutureOr<List<Address>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Address>>, List<Address>>;
    final element = ref.element
        as $ClassProviderElement<
          AnyNotifier<AsyncValue<List<Address>>, List<Address>>,
          AsyncValue<List<Address>>, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
