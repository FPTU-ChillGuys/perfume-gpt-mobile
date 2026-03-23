// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient_info_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecipientInfoResponseCWProxy {
  RecipientInfoResponse id(String? id);

  RecipientInfoResponse fullName(String? fullName);

  RecipientInfoResponse phone(String? phone);

  RecipientInfoResponse districtName(String? districtName);

  RecipientInfoResponse wardName(String? wardName);

  RecipientInfoResponse provinceName(String? provinceName);

  RecipientInfoResponse fullAddress(String? fullAddress);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecipientInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecipientInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  RecipientInfoResponse call({
    String? id,
    String? fullName,
    String? phone,
    String? districtName,
    String? wardName,
    String? provinceName,
    String? fullAddress,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRecipientInfoResponse.copyWith(...)` or call `instanceOfRecipientInfoResponse.copyWith.fieldName(value)` for a single field.
class _$RecipientInfoResponseCWProxyImpl
    implements _$RecipientInfoResponseCWProxy {
  const _$RecipientInfoResponseCWProxyImpl(this._value);

  final RecipientInfoResponse _value;

  @override
  RecipientInfoResponse id(String? id) => call(id: id);

  @override
  RecipientInfoResponse fullName(String? fullName) => call(fullName: fullName);

  @override
  RecipientInfoResponse phone(String? phone) => call(phone: phone);

  @override
  RecipientInfoResponse districtName(String? districtName) =>
      call(districtName: districtName);

  @override
  RecipientInfoResponse wardName(String? wardName) => call(wardName: wardName);

  @override
  RecipientInfoResponse provinceName(String? provinceName) =>
      call(provinceName: provinceName);

  @override
  RecipientInfoResponse fullAddress(String? fullAddress) =>
      call(fullAddress: fullAddress);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecipientInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecipientInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  RecipientInfoResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? districtName = const $CopyWithPlaceholder(),
    Object? wardName = const $CopyWithPlaceholder(),
    Object? provinceName = const $CopyWithPlaceholder(),
    Object? fullAddress = const $CopyWithPlaceholder(),
  }) {
    return RecipientInfoResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      districtName: districtName == const $CopyWithPlaceholder()
          ? _value.districtName
          // ignore: cast_nullable_to_non_nullable
          : districtName as String?,
      wardName: wardName == const $CopyWithPlaceholder()
          ? _value.wardName
          // ignore: cast_nullable_to_non_nullable
          : wardName as String?,
      provinceName: provinceName == const $CopyWithPlaceholder()
          ? _value.provinceName
          // ignore: cast_nullable_to_non_nullable
          : provinceName as String?,
      fullAddress: fullAddress == const $CopyWithPlaceholder()
          ? _value.fullAddress
          // ignore: cast_nullable_to_non_nullable
          : fullAddress as String?,
    );
  }
}

extension $RecipientInfoResponseCopyWith on RecipientInfoResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRecipientInfoResponse.copyWith(...)` or `instanceOfRecipientInfoResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecipientInfoResponseCWProxy get copyWith =>
      _$RecipientInfoResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipientInfoResponse _$RecipientInfoResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RecipientInfoResponse', json, ($checkedConvert) {
  final val = RecipientInfoResponse(
    id: $checkedConvert('id', (v) => v as String?),
    fullName: $checkedConvert('fullName', (v) => v as String?),
    phone: $checkedConvert('phone', (v) => v as String?),
    districtName: $checkedConvert('districtName', (v) => v as String?),
    wardName: $checkedConvert('wardName', (v) => v as String?),
    provinceName: $checkedConvert('provinceName', (v) => v as String?),
    fullAddress: $checkedConvert('fullAddress', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$RecipientInfoResponseToJson(
  RecipientInfoResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'fullName': ?instance.fullName,
  'phone': ?instance.phone,
  'districtName': ?instance.districtName,
  'wardName': ?instance.wardName,
  'provinceName': ?instance.provinceName,
  'fullAddress': ?instance.fullAddress,
};
