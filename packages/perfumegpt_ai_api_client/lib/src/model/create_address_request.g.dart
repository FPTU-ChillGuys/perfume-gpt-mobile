// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAddressRequestCWProxy {
  CreateAddressRequest recipientName(String recipientName);

  CreateAddressRequest recipientPhoneNumber(String recipientPhoneNumber);

  CreateAddressRequest street(String street);

  CreateAddressRequest ward(String ward);

  CreateAddressRequest district(String district);

  CreateAddressRequest city(String city);

  CreateAddressRequest wardCode(String wardCode);

  CreateAddressRequest districtId(int? districtId);

  CreateAddressRequest provinceId(int? provinceId);

  CreateAddressRequest isDefault(bool? isDefault);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAddressRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAddressRequest call({
    String recipientName,
    String recipientPhoneNumber,
    String street,
    String ward,
    String district,
    String city,
    String wardCode,
    int? districtId,
    int? provinceId,
    bool? isDefault,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateAddressRequest.copyWith(...)` or call `instanceOfCreateAddressRequest.copyWith.fieldName(value)` for a single field.
class _$CreateAddressRequestCWProxyImpl
    implements _$CreateAddressRequestCWProxy {
  const _$CreateAddressRequestCWProxyImpl(this._value);

  final CreateAddressRequest _value;

  @override
  CreateAddressRequest recipientName(String recipientName) =>
      call(recipientName: recipientName);

  @override
  CreateAddressRequest recipientPhoneNumber(String recipientPhoneNumber) =>
      call(recipientPhoneNumber: recipientPhoneNumber);

  @override
  CreateAddressRequest street(String street) => call(street: street);

  @override
  CreateAddressRequest ward(String ward) => call(ward: ward);

  @override
  CreateAddressRequest district(String district) => call(district: district);

  @override
  CreateAddressRequest city(String city) => call(city: city);

  @override
  CreateAddressRequest wardCode(String wardCode) => call(wardCode: wardCode);

  @override
  CreateAddressRequest districtId(int? districtId) =>
      call(districtId: districtId);

  @override
  CreateAddressRequest provinceId(int? provinceId) =>
      call(provinceId: provinceId);

  @override
  CreateAddressRequest isDefault(bool? isDefault) => call(isDefault: isDefault);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAddressRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAddressRequest call({
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
    return CreateAddressRequest(
      recipientName:
          recipientName == const $CopyWithPlaceholder() || recipientName == null
          ? _value.recipientName
          // ignore: cast_nullable_to_non_nullable
          : recipientName as String,
      recipientPhoneNumber:
          recipientPhoneNumber == const $CopyWithPlaceholder() ||
              recipientPhoneNumber == null
          ? _value.recipientPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : recipientPhoneNumber as String,
      street: street == const $CopyWithPlaceholder() || street == null
          ? _value.street
          // ignore: cast_nullable_to_non_nullable
          : street as String,
      ward: ward == const $CopyWithPlaceholder() || ward == null
          ? _value.ward
          // ignore: cast_nullable_to_non_nullable
          : ward as String,
      district: district == const $CopyWithPlaceholder() || district == null
          ? _value.district
          // ignore: cast_nullable_to_non_nullable
          : district as String,
      city: city == const $CopyWithPlaceholder() || city == null
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String,
      wardCode: wardCode == const $CopyWithPlaceholder() || wardCode == null
          ? _value.wardCode
          // ignore: cast_nullable_to_non_nullable
          : wardCode as String,
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

extension $CreateAddressRequestCopyWith on CreateAddressRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateAddressRequest.copyWith(...)` or `instanceOfCreateAddressRequest.copyWith.fieldName(...)`.
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
  $checkKeys(
    json,
    requiredKeys: const [
      'recipientName',
      'recipientPhoneNumber',
      'street',
      'ward',
      'district',
      'city',
      'wardCode',
    ],
  );
  final val = CreateAddressRequest(
    recipientName: $checkedConvert('recipientName', (v) => v as String),
    recipientPhoneNumber: $checkedConvert(
      'recipientPhoneNumber',
      (v) => v as String,
    ),
    street: $checkedConvert('street', (v) => v as String),
    ward: $checkedConvert('ward', (v) => v as String),
    district: $checkedConvert('district', (v) => v as String),
    city: $checkedConvert('city', (v) => v as String),
    wardCode: $checkedConvert('wardCode', (v) => v as String),
    districtId: $checkedConvert('districtId', (v) => (v as num?)?.toInt()),
    provinceId: $checkedConvert('provinceId', (v) => (v as num?)?.toInt()),
    isDefault: $checkedConvert('isDefault', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$CreateAddressRequestToJson(
  CreateAddressRequest instance,
) => <String, dynamic>{
  'recipientName': instance.recipientName,
  'recipientPhoneNumber': instance.recipientPhoneNumber,
  'street': instance.street,
  'ward': instance.ward,
  'district': instance.district,
  'city': instance.city,
  'wardCode': instance.wardCode,
  'districtId': ?instance.districtId,
  'provinceId': ?instance.provinceId,
  'isDefault': ?instance.isDefault,
};
