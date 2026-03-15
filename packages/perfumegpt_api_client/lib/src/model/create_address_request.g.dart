// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAddressRequestCWProxy {
  CreateAddressRequest receiverName(String? receiverName);

  CreateAddressRequest phone(String? phone);

  CreateAddressRequest street(String? street);

  CreateAddressRequest ward(String? ward);

  CreateAddressRequest district(String? district);

  CreateAddressRequest city(String? city);

  CreateAddressRequest wardCode(String? wardCode);

  CreateAddressRequest districtId(int? districtId);

  CreateAddressRequest provinceId(int? provinceId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAddressRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAddressRequest call({
    String? receiverName,
    String? phone,
    String? street,
    String? ward,
    String? district,
    String? city,
    String? wardCode,
    int? districtId,
    int? provinceId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateAddressRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateAddressRequest.copyWith.fieldName(...)`
class _$CreateAddressRequestCWProxyImpl
    implements _$CreateAddressRequestCWProxy {
  const _$CreateAddressRequestCWProxyImpl(this._value);

  final CreateAddressRequest _value;

  @override
  CreateAddressRequest receiverName(String? receiverName) =>
      this(receiverName: receiverName);

  @override
  CreateAddressRequest phone(String? phone) => this(phone: phone);

  @override
  CreateAddressRequest street(String? street) => this(street: street);

  @override
  CreateAddressRequest ward(String? ward) => this(ward: ward);

  @override
  CreateAddressRequest district(String? district) => this(district: district);

  @override
  CreateAddressRequest city(String? city) => this(city: city);

  @override
  CreateAddressRequest wardCode(String? wardCode) => this(wardCode: wardCode);

  @override
  CreateAddressRequest districtId(int? districtId) =>
      this(districtId: districtId);

  @override
  CreateAddressRequest provinceId(int? provinceId) =>
      this(provinceId: provinceId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAddressRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAddressRequest call({
    Object? receiverName = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? street = const $CopyWithPlaceholder(),
    Object? ward = const $CopyWithPlaceholder(),
    Object? district = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? wardCode = const $CopyWithPlaceholder(),
    Object? districtId = const $CopyWithPlaceholder(),
    Object? provinceId = const $CopyWithPlaceholder(),
  }) {
    return CreateAddressRequest(
      receiverName: receiverName == const $CopyWithPlaceholder()
          ? _value.receiverName
          // ignore: cast_nullable_to_non_nullable
          : receiverName as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      street: street == const $CopyWithPlaceholder()
          ? _value.street
          // ignore: cast_nullable_to_non_nullable
          : street as String?,
      ward: ward == const $CopyWithPlaceholder()
          ? _value.ward
          // ignore: cast_nullable_to_non_nullable
          : ward as String?,
      district: district == const $CopyWithPlaceholder()
          ? _value.district
          // ignore: cast_nullable_to_non_nullable
          : district as String?,
      city: city == const $CopyWithPlaceholder()
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String?,
      wardCode: wardCode == const $CopyWithPlaceholder()
          ? _value.wardCode
          // ignore: cast_nullable_to_non_nullable
          : wardCode as String?,
      districtId: districtId == const $CopyWithPlaceholder()
          ? _value.districtId
          // ignore: cast_nullable_to_non_nullable
          : districtId as int?,
      provinceId: provinceId == const $CopyWithPlaceholder()
          ? _value.provinceId
          // ignore: cast_nullable_to_non_nullable
          : provinceId as int?,
    );
  }
}

extension $CreateAddressRequestCopyWith on CreateAddressRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateAddressRequest.copyWith(...)` or like so:`instanceOfCreateAddressRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateAddressRequestCWProxy get copyWith =>
      _$CreateAddressRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAddressRequest _$CreateAddressRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateAddressRequest', json, ($checkedConvert) {
  final val = CreateAddressRequest(
    receiverName: $checkedConvert('receiverName', (v) => v as String?),
    phone: $checkedConvert('phone', (v) => v as String?),
    street: $checkedConvert('street', (v) => v as String?),
    ward: $checkedConvert('ward', (v) => v as String?),
    district: $checkedConvert('district', (v) => v as String?),
    city: $checkedConvert('city', (v) => v as String?),
    wardCode: $checkedConvert('wardCode', (v) => v as String?),
    districtId: $checkedConvert('districtId', (v) => (v as num?)?.toInt()),
    provinceId: $checkedConvert('provinceId', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CreateAddressRequestToJson(
  CreateAddressRequest instance,
) => <String, dynamic>{
  'receiverName': ?instance.receiverName,
  'phone': ?instance.phone,
  'street': ?instance.street,
  'ward': ?instance.ward,
  'district': ?instance.district,
  'city': ?instance.city,
  'wardCode': ?instance.wardCode,
  'districtId': ?instance.districtId,
  'provinceId': ?instance.provinceId,
};
