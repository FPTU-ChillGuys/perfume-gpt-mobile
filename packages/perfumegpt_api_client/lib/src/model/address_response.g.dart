// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressResponseCWProxy {
  AddressResponse id(String? id);

  AddressResponse receiverName(String? receiverName);

  AddressResponse phone(String? phone);

  AddressResponse street(String? street);

  AddressResponse ward(String? ward);

  AddressResponse district(String? district);

  AddressResponse city(String? city);

  AddressResponse wardCode(String? wardCode);

  AddressResponse districtId(int? districtId);

  AddressResponse provinceId(int? provinceId);

  AddressResponse isDefault(bool? isDefault);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddressResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddressResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  AddressResponse call({
    String? id,
    String? receiverName,
    String? phone,
    String? street,
    String? ward,
    String? district,
    String? city,
    String? wardCode,
    int? districtId,
    int? provinceId,
    bool? isDefault,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddressResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddressResponse.copyWith.fieldName(...)`
class _$AddressResponseCWProxyImpl implements _$AddressResponseCWProxy {
  const _$AddressResponseCWProxyImpl(this._value);

  final AddressResponse _value;

  @override
  AddressResponse id(String? id) => this(id: id);

  @override
  AddressResponse receiverName(String? receiverName) =>
      this(receiverName: receiverName);

  @override
  AddressResponse phone(String? phone) => this(phone: phone);

  @override
  AddressResponse street(String? street) => this(street: street);

  @override
  AddressResponse ward(String? ward) => this(ward: ward);

  @override
  AddressResponse district(String? district) => this(district: district);

  @override
  AddressResponse city(String? city) => this(city: city);

  @override
  AddressResponse wardCode(String? wardCode) => this(wardCode: wardCode);

  @override
  AddressResponse districtId(int? districtId) => this(districtId: districtId);

  @override
  AddressResponse provinceId(int? provinceId) => this(provinceId: provinceId);

  @override
  AddressResponse isDefault(bool? isDefault) => this(isDefault: isDefault);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddressResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddressResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  AddressResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? receiverName = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? street = const $CopyWithPlaceholder(),
    Object? ward = const $CopyWithPlaceholder(),
    Object? district = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? wardCode = const $CopyWithPlaceholder(),
    Object? districtId = const $CopyWithPlaceholder(),
    Object? provinceId = const $CopyWithPlaceholder(),
    Object? isDefault = const $CopyWithPlaceholder(),
  }) {
    return AddressResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
      isDefault: isDefault == const $CopyWithPlaceholder()
          ? _value.isDefault
          // ignore: cast_nullable_to_non_nullable
          : isDefault as bool?,
    );
  }
}

extension $AddressResponseCopyWith on AddressResponse {
  /// Returns a callable class that can be used as follows: `instanceOfAddressResponse.copyWith(...)` or like so:`instanceOfAddressResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddressResponseCWProxy get copyWith => _$AddressResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AddressResponse', json, ($checkedConvert) {
      final val = AddressResponse(
        id: $checkedConvert('id', (v) => v as String?),
        receiverName: $checkedConvert('receiverName', (v) => v as String?),
        phone: $checkedConvert('phone', (v) => v as String?),
        street: $checkedConvert('street', (v) => v as String?),
        ward: $checkedConvert('ward', (v) => v as String?),
        district: $checkedConvert('district', (v) => v as String?),
        city: $checkedConvert('city', (v) => v as String?),
        wardCode: $checkedConvert('wardCode', (v) => v as String?),
        districtId: $checkedConvert('districtId', (v) => (v as num?)?.toInt()),
        provinceId: $checkedConvert('provinceId', (v) => (v as num?)?.toInt()),
        isDefault: $checkedConvert('isDefault', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'receiverName': ?instance.receiverName,
      'phone': ?instance.phone,
      'street': ?instance.street,
      'ward': ?instance.ward,
      'district': ?instance.district,
      'city': ?instance.city,
      'wardCode': ?instance.wardCode,
      'districtId': ?instance.districtId,
      'provinceId': ?instance.provinceId,
      'isDefault': ?instance.isDefault,
    };
