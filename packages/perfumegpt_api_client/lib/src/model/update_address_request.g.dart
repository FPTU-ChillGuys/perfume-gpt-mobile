// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_address_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateAddressRequestCWProxy {
  UpdateAddressRequest receiverName(String? receiverName);

  UpdateAddressRequest phone(String? phone);

  UpdateAddressRequest street(String? street);

  UpdateAddressRequest ward(String? ward);

  UpdateAddressRequest district(String? district);

  UpdateAddressRequest city(String? city);

  UpdateAddressRequest wardCode(String? wardCode);

  UpdateAddressRequest districtId(int? districtId);

  UpdateAddressRequest provinceId(int? provinceId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAddressRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAddressRequest call({
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

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateAddressRequest.copyWith(...)` or call `instanceOfUpdateAddressRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateAddressRequestCWProxyImpl
    implements _$UpdateAddressRequestCWProxy {
  const _$UpdateAddressRequestCWProxyImpl(this._value);

  final UpdateAddressRequest _value;

  @override
  UpdateAddressRequest receiverName(String? receiverName) =>
      call(receiverName: receiverName);

  @override
  UpdateAddressRequest phone(String? phone) => call(phone: phone);

  @override
  UpdateAddressRequest street(String? street) => call(street: street);

  @override
  UpdateAddressRequest ward(String? ward) => call(ward: ward);

  @override
  UpdateAddressRequest district(String? district) => call(district: district);

  @override
  UpdateAddressRequest city(String? city) => call(city: city);

  @override
  UpdateAddressRequest wardCode(String? wardCode) => call(wardCode: wardCode);

  @override
  UpdateAddressRequest districtId(int? districtId) =>
      call(districtId: districtId);

  @override
  UpdateAddressRequest provinceId(int? provinceId) =>
      call(provinceId: provinceId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAddressRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAddressRequest call({
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
    return UpdateAddressRequest(
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

extension $UpdateAddressRequestCopyWith on UpdateAddressRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateAddressRequest.copyWith(...)` or `instanceOfUpdateAddressRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateAddressRequestCWProxy get copyWith =>
      _$UpdateAddressRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAddressRequest _$UpdateAddressRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateAddressRequest', json, ($checkedConvert) {
  final val = UpdateAddressRequest(
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

Map<String, dynamic> _$UpdateAddressRequestToJson(
  UpdateAddressRequest instance,
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
