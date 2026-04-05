// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_address_information.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContactAddressInformationCWProxy {
  ContactAddressInformation contactName(String contactName);

  ContactAddressInformation contactPhoneNumber(String contactPhoneNumber);

  ContactAddressInformation districtId(int? districtId);

  ContactAddressInformation districtName(String districtName);

  ContactAddressInformation wardCode(String wardCode);

  ContactAddressInformation wardName(String wardName);

  ContactAddressInformation provinceId(int? provinceId);

  ContactAddressInformation provinceName(String provinceName);

  ContactAddressInformation fullAddress(String fullAddress);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContactAddressInformation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContactAddressInformation(...).copyWith(id: 12, name: "My name")
  /// ```
  ContactAddressInformation call({
    String contactName,
    String contactPhoneNumber,
    int? districtId,
    String districtName,
    String wardCode,
    String wardName,
    int? provinceId,
    String provinceName,
    String fullAddress,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfContactAddressInformation.copyWith(...)` or call `instanceOfContactAddressInformation.copyWith.fieldName(value)` for a single field.
class _$ContactAddressInformationCWProxyImpl
    implements _$ContactAddressInformationCWProxy {
  const _$ContactAddressInformationCWProxyImpl(this._value);

  final ContactAddressInformation _value;

  @override
  ContactAddressInformation contactName(String contactName) =>
      call(contactName: contactName);

  @override
  ContactAddressInformation contactPhoneNumber(String contactPhoneNumber) =>
      call(contactPhoneNumber: contactPhoneNumber);

  @override
  ContactAddressInformation districtId(int? districtId) =>
      call(districtId: districtId);

  @override
  ContactAddressInformation districtName(String districtName) =>
      call(districtName: districtName);

  @override
  ContactAddressInformation wardCode(String wardCode) =>
      call(wardCode: wardCode);

  @override
  ContactAddressInformation wardName(String wardName) =>
      call(wardName: wardName);

  @override
  ContactAddressInformation provinceId(int? provinceId) =>
      call(provinceId: provinceId);

  @override
  ContactAddressInformation provinceName(String provinceName) =>
      call(provinceName: provinceName);

  @override
  ContactAddressInformation fullAddress(String fullAddress) =>
      call(fullAddress: fullAddress);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContactAddressInformation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContactAddressInformation(...).copyWith(id: 12, name: "My name")
  /// ```
  ContactAddressInformation call({
    Object? contactName = const $CopyWithPlaceholder(),
    Object? contactPhoneNumber = const $CopyWithPlaceholder(),
    Object? districtId = const $CopyWithPlaceholder(),
    Object? districtName = const $CopyWithPlaceholder(),
    Object? wardCode = const $CopyWithPlaceholder(),
    Object? wardName = const $CopyWithPlaceholder(),
    Object? provinceId = const $CopyWithPlaceholder(),
    Object? provinceName = const $CopyWithPlaceholder(),
    Object? fullAddress = const $CopyWithPlaceholder(),
  }) {
    return ContactAddressInformation(
      contactName:
          contactName == const $CopyWithPlaceholder() || contactName == null
          ? _value.contactName
          // ignore: cast_nullable_to_non_nullable
          : contactName as String,
      contactPhoneNumber:
          contactPhoneNumber == const $CopyWithPlaceholder() ||
              contactPhoneNumber == null
          ? _value.contactPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : contactPhoneNumber as String,
      districtId: districtId == const $CopyWithPlaceholder()
          ? _value.districtId
          // ignore: cast_nullable_to_non_nullable
          : districtId as int?,
      districtName:
          districtName == const $CopyWithPlaceholder() || districtName == null
          ? _value.districtName
          // ignore: cast_nullable_to_non_nullable
          : districtName as String,
      wardCode: wardCode == const $CopyWithPlaceholder() || wardCode == null
          ? _value.wardCode
          // ignore: cast_nullable_to_non_nullable
          : wardCode as String,
      wardName: wardName == const $CopyWithPlaceholder() || wardName == null
          ? _value.wardName
          // ignore: cast_nullable_to_non_nullable
          : wardName as String,
      provinceId: provinceId == const $CopyWithPlaceholder()
          ? _value.provinceId
          // ignore: cast_nullable_to_non_nullable
          : provinceId as int?,
      provinceName:
          provinceName == const $CopyWithPlaceholder() || provinceName == null
          ? _value.provinceName
          // ignore: cast_nullable_to_non_nullable
          : provinceName as String,
      fullAddress:
          fullAddress == const $CopyWithPlaceholder() || fullAddress == null
          ? _value.fullAddress
          // ignore: cast_nullable_to_non_nullable
          : fullAddress as String,
    );
  }
}

extension $ContactAddressInformationCopyWith on ContactAddressInformation {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfContactAddressInformation.copyWith(...)` or `instanceOfContactAddressInformation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ContactAddressInformationCWProxy get copyWith =>
      _$ContactAddressInformationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAddressInformation _$ContactAddressInformationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ContactAddressInformation', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'contactName',
      'contactPhoneNumber',
      'districtName',
      'wardCode',
      'wardName',
      'provinceName',
      'fullAddress',
    ],
  );
  final val = ContactAddressInformation(
    contactName: $checkedConvert('contactName', (v) => v as String),
    contactPhoneNumber: $checkedConvert(
      'contactPhoneNumber',
      (v) => v as String,
    ),
    districtId: $checkedConvert('districtId', (v) => (v as num?)?.toInt()),
    districtName: $checkedConvert('districtName', (v) => v as String),
    wardCode: $checkedConvert('wardCode', (v) => v as String),
    wardName: $checkedConvert('wardName', (v) => v as String),
    provinceId: $checkedConvert('provinceId', (v) => (v as num?)?.toInt()),
    provinceName: $checkedConvert('provinceName', (v) => v as String),
    fullAddress: $checkedConvert('fullAddress', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ContactAddressInformationToJson(
  ContactAddressInformation instance,
) => <String, dynamic>{
  'contactName': instance.contactName,
  'contactPhoneNumber': instance.contactPhoneNumber,
  'districtId': ?instance.districtId,
  'districtName': instance.districtName,
  'wardCode': instance.wardCode,
  'wardName': instance.wardName,
  'provinceId': ?instance.provinceId,
  'provinceName': instance.provinceName,
  'fullAddress': instance.fullAddress,
};
