// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressResponseCWProxy {
  AddressResponse id(String? id);

  AddressResponse recipientName(String? recipientName);

  AddressResponse recipientPhoneNumber(String? recipientPhoneNumber);

  AddressResponse street(String? street);

  AddressResponse ward(String? ward);

  AddressResponse district(String? district);

  AddressResponse city(String? city);

  AddressResponse wardCode(String? wardCode);

  AddressResponse districtId(int? districtId);

  AddressResponse provinceId(int? provinceId);

  AddressResponse isDefault(bool? isDefault);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddressResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddressResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AddressResponse call({
    String? id,
    String? recipientName,
    String? recipientPhoneNumber,
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

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAddressResponse.copyWith(...)` or call `instanceOfAddressResponse.copyWith.fieldName(value)` for a single field.
class _$AddressResponseCWProxyImpl implements _$AddressResponseCWProxy {
  const _$AddressResponseCWProxyImpl(this._value);

  final AddressResponse _value;

  @override
  AddressResponse id(String? id) => call(id: id);

  @override
  AddressResponse recipientName(String? recipientName) =>
      call(recipientName: recipientName);

  @override
  AddressResponse recipientPhoneNumber(String? recipientPhoneNumber) =>
      call(recipientPhoneNumber: recipientPhoneNumber);

  @override
  AddressResponse street(String? street) => call(street: street);

  @override
  AddressResponse ward(String? ward) => call(ward: ward);

  @override
  AddressResponse district(String? district) => call(district: district);

  @override
  AddressResponse city(String? city) => call(city: city);

  @override
  AddressResponse wardCode(String? wardCode) => call(wardCode: wardCode);

  @override
  AddressResponse districtId(int? districtId) => call(districtId: districtId);

  @override
  AddressResponse provinceId(int? provinceId) => call(provinceId: provinceId);

  @override
  AddressResponse isDefault(bool? isDefault) => call(isDefault: isDefault);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddressResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddressResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AddressResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? recipientName = const $CopyWithPlaceholder(),
    Object? recipientPhoneNumber = const $CopyWithPlaceholder(),
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
      recipientName: recipientName == const $CopyWithPlaceholder()
          ? _value.recipientName
          // ignore: cast_nullable_to_non_nullable
          : recipientName as String?,
      recipientPhoneNumber: recipientPhoneNumber == const $CopyWithPlaceholder()
          ? _value.recipientPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : recipientPhoneNumber as String?,
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAddressResponse.copyWith(...)` or `instanceOfAddressResponse.copyWith.fieldName(...)`.
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
        recipientName: $checkedConvert('recipientName', (v) => v as String?),
        recipientPhoneNumber: $checkedConvert(
          'recipientPhoneNumber',
          (v) => v as String?,
        ),
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
      'recipientName': ?instance.recipientName,
      'recipientPhoneNumber': ?instance.recipientPhoneNumber,
      'street': ?instance.street,
      'ward': ?instance.ward,
      'district': ?instance.district,
      'city': ?instance.city,
      'wardCode': ?instance.wardCode,
      'districtId': ?instance.districtId,
      'provinceId': ?instance.provinceId,
      'isDefault': ?instance.isDefault,
    };
