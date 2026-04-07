// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(savedAddresses)
final savedAddressesProvider = SavedAddressesProvider._();

final class SavedAddressesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AddressResponse>>,
          List<AddressResponse>,
          FutureOr<List<AddressResponse>>
        >
    with
        $FutureModifier<List<AddressResponse>>,
        $FutureProvider<List<AddressResponse>> {
  SavedAddressesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'savedAddressesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$savedAddressesHash();

  @$internal
  @override
  $FutureProviderElement<List<AddressResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AddressResponse>> create(Ref ref) {
    return savedAddresses(ref);
  }
}

String _$savedAddressesHash() => r'12d605baf5400616c87497c27a4cdd59fa2f6e21';

@ProviderFor(provinces)
final provincesProvider = ProvincesProvider._();

final class ProvincesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProvinceResponse>>,
          List<ProvinceResponse>,
          FutureOr<List<ProvinceResponse>>
        >
    with
        $FutureModifier<List<ProvinceResponse>>,
        $FutureProvider<List<ProvinceResponse>> {
  ProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'provincesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$provincesHash();

  @$internal
  @override
  $FutureProviderElement<List<ProvinceResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProvinceResponse>> create(Ref ref) {
    return provinces(ref);
  }
}

String _$provincesHash() => r'144a7ac3367aa893da7a558671395be965805744';

@ProviderFor(districts)
final districtsProvider = DistrictsFamily._();

final class DistrictsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DistrictResponse>>,
          List<DistrictResponse>,
          FutureOr<List<DistrictResponse>>
        >
    with
        $FutureModifier<List<DistrictResponse>>,
        $FutureProvider<List<DistrictResponse>> {
  DistrictsProvider._({
    required DistrictsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'districtsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$districtsHash();

  @override
  String toString() {
    return r'districtsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<DistrictResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DistrictResponse>> create(Ref ref) {
    final argument = this.argument as int;
    return districts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DistrictsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$districtsHash() => r'377e36d04449f696de861d91159e265d11367da2';

final class DistrictsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<DistrictResponse>>, int> {
  DistrictsFamily._()
    : super(
        retry: null,
        name: r'districtsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DistrictsProvider call(int provinceId) =>
      DistrictsProvider._(argument: provinceId, from: this);

  @override
  String toString() => r'districtsProvider';
}

@ProviderFor(wards)
final wardsProvider = WardsFamily._();

final class WardsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<WardResponse>>,
          List<WardResponse>,
          FutureOr<List<WardResponse>>
        >
    with
        $FutureModifier<List<WardResponse>>,
        $FutureProvider<List<WardResponse>> {
  WardsProvider._({
    required WardsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'wardsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$wardsHash();

  @override
  String toString() {
    return r'wardsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<WardResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<WardResponse>> create(Ref ref) {
    final argument = this.argument as int;
    return wards(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WardsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$wardsHash() => r'33ccd06212ec25d8ccb37d6a35cb9efe92ce14a9';

final class WardsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<WardResponse>>, int> {
  WardsFamily._()
    : super(
        retry: null,
        name: r'wardsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WardsProvider call(int districtId) =>
      WardsProvider._(argument: districtId, from: this);

  @override
  String toString() => r'wardsProvider';
}
