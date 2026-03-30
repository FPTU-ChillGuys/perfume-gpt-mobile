// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient_information.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecipientInformationCWProxy {
  RecipientInformation recipientName(String? recipientName);

  RecipientInformation recipientPhoneNumber(String? recipientPhoneNumber);

  RecipientInformation districtId(int? districtId);

  RecipientInformation districtName(String? districtName);

  RecipientInformation wardCode(String? wardCode);

  RecipientInformation wardName(String? wardName);

  RecipientInformation provinceId(int? provinceId);

  RecipientInformation provinceName(String? provinceName);

  RecipientInformation fullAddress(String? fullAddress);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecipientInformation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecipientInformation(...).copyWith(id: 12, name: "My name")
  /// ```
  RecipientInformation call({
    String? recipientName,
    String? recipientPhoneNumber,
    int? districtId,
    String? districtName,
    String? wardCode,
    String? wardName,
    int? provinceId,
    String? provinceName,
    String? fullAddress,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRecipientInformation.copyWith(...)` or call `instanceOfRecipientInformation.copyWith.fieldName(value)` for a single field.
class _$RecipientInformationCWProxyImpl
    implements _$RecipientInformationCWProxy {
  const _$RecipientInformationCWProxyImpl(this._value);

  final RecipientInformation _value;

  @override
  RecipientInformation recipientName(String? recipientName) =>
      call(recipientName: recipientName);

  @override
  RecipientInformation recipientPhoneNumber(String? recipientPhoneNumber) =>
      call(recipientPhoneNumber: recipientPhoneNumber);

  @override
  RecipientInformation districtId(int? districtId) =>
      call(districtId: districtId);

  @override
  RecipientInformation districtName(String? districtName) =>
      call(districtName: districtName);

  @override
  RecipientInformation wardCode(String? wardCode) => call(wardCode: wardCode);

  @override
  RecipientInformation wardName(String? wardName) => call(wardName: wardName);

  @override
  RecipientInformation provinceId(int? provinceId) =>
      call(provinceId: provinceId);

  @override
  RecipientInformation provinceName(String? provinceName) =>
      call(provinceName: provinceName);

  @override
  RecipientInformation fullAddress(String? fullAddress) =>
      call(fullAddress: fullAddress);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecipientInformation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecipientInformation(...).copyWith(id: 12, name: "My name")
  /// ```
  RecipientInformation call({
    Object? recipientName = const $CopyWithPlaceholder(),
    Object? recipientPhoneNumber = const $CopyWithPlaceholder(),
    Object? districtId = const $CopyWithPlaceholder(),
    Object? districtName = const $CopyWithPlaceholder(),
    Object? wardCode = const $CopyWithPlaceholder(),
    Object? wardName = const $CopyWithPlaceholder(),
    Object? provinceId = const $CopyWithPlaceholder(),
    Object? provinceName = const $CopyWithPlaceholder(),
    Object? fullAddress = const $CopyWithPlaceholder(),
  }) {
    return RecipientInformation(
      recipientName: recipientName == const $CopyWithPlaceholder()
          ? _value.recipientName
          // ignore: cast_nullable_to_non_nullable
          : recipientName as String?,
      recipientPhoneNumber: recipientPhoneNumber == const $CopyWithPlaceholder()
          ? _value.recipientPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : recipientPhoneNumber as String?,
      districtId: districtId == const $CopyWithPlaceholder()
          ? _value.districtId
          // ignore: cast_nullable_to_non_nullable
          : districtId as int?,
      districtName: districtName == const $CopyWithPlaceholder()
          ? _value.districtName
          // ignore: cast_nullable_to_non_nullable
          : districtName as String?,
      wardCode: wardCode == const $CopyWithPlaceholder()
          ? _value.wardCode
          // ignore: cast_nullable_to_non_nullable
          : wardCode as String?,
      wardName: wardName == const $CopyWithPlaceholder()
          ? _value.wardName
          // ignore: cast_nullable_to_non_nullable
          : wardName as String?,
      provinceId: provinceId == const $CopyWithPlaceholder()
          ? _value.provinceId
          // ignore: cast_nullable_to_non_nullable
          : provinceId as int?,
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

extension $RecipientInformationCopyWith on RecipientInformation {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRecipientInformation.copyWith(...)` or `instanceOfRecipientInformation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecipientInformationCWProxy get copyWith =>
      _$RecipientInformationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipientInformation _$RecipientInformationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RecipientInformation', json, ($checkedConvert) {
  final val = RecipientInformation(
    recipientName: $checkedConvert('recipientName', (v) => v as String?),
    recipientPhoneNumber: $checkedConvert(
      'recipientPhoneNumber',
      (v) => v as String?,
    ),
    districtId: $checkedConvert('districtId', (v) => (v as num?)?.toInt()),
    districtName: $checkedConvert('districtName', (v) => v as String?),
    wardCode: $checkedConvert('wardCode', (v) => v as String?),
    wardName: $checkedConvert('wardName', (v) => v as String?),
    provinceId: $checkedConvert('provinceId', (v) => (v as num?)?.toInt()),
    provinceName: $checkedConvert('provinceName', (v) => v as String?),
    fullAddress: $checkedConvert('fullAddress', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$RecipientInformationToJson(
  RecipientInformation instance,
) => <String, dynamic>{
  'recipientName': ?instance.recipientName,
  'recipientPhoneNumber': ?instance.recipientPhoneNumber,
  'districtId': ?instance.districtId,
  'districtName': ?instance.districtName,
  'wardCode': ?instance.wardCode,
  'wardName': ?instance.wardName,
  'provinceId': ?instance.provinceId,
  'provinceName': ?instance.provinceName,
  'fullAddress': ?instance.fullAddress,
};
