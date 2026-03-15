// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient_information.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecipientInformationCWProxy {
  RecipientInformation fullName(String? fullName);

  RecipientInformation phone(String? phone);

  RecipientInformation districtId(int? districtId);

  RecipientInformation districtName(String? districtName);

  RecipientInformation wardCode(String? wardCode);

  RecipientInformation wardName(String? wardName);

  RecipientInformation provinceId(int? provinceId);

  RecipientInformation provinceName(String? provinceName);

  RecipientInformation fullAddress(String? fullAddress);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecipientInformation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecipientInformation(...).copyWith(id: 12, name: "My name")
  /// ````
  RecipientInformation call({
    String? fullName,
    String? phone,
    int? districtId,
    String? districtName,
    String? wardCode,
    String? wardName,
    int? provinceId,
    String? provinceName,
    String? fullAddress,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRecipientInformation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRecipientInformation.copyWith.fieldName(...)`
class _$RecipientInformationCWProxyImpl
    implements _$RecipientInformationCWProxy {
  const _$RecipientInformationCWProxyImpl(this._value);

  final RecipientInformation _value;

  @override
  RecipientInformation fullName(String? fullName) => this(fullName: fullName);

  @override
  RecipientInformation phone(String? phone) => this(phone: phone);

  @override
  RecipientInformation districtId(int? districtId) =>
      this(districtId: districtId);

  @override
  RecipientInformation districtName(String? districtName) =>
      this(districtName: districtName);

  @override
  RecipientInformation wardCode(String? wardCode) => this(wardCode: wardCode);

  @override
  RecipientInformation wardName(String? wardName) => this(wardName: wardName);

  @override
  RecipientInformation provinceId(int? provinceId) =>
      this(provinceId: provinceId);

  @override
  RecipientInformation provinceName(String? provinceName) =>
      this(provinceName: provinceName);

  @override
  RecipientInformation fullAddress(String? fullAddress) =>
      this(fullAddress: fullAddress);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecipientInformation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecipientInformation(...).copyWith(id: 12, name: "My name")
  /// ````
  RecipientInformation call({
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? districtId = const $CopyWithPlaceholder(),
    Object? districtName = const $CopyWithPlaceholder(),
    Object? wardCode = const $CopyWithPlaceholder(),
    Object? wardName = const $CopyWithPlaceholder(),
    Object? provinceId = const $CopyWithPlaceholder(),
    Object? provinceName = const $CopyWithPlaceholder(),
    Object? fullAddress = const $CopyWithPlaceholder(),
  }) {
    return RecipientInformation(
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
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
  /// Returns a callable class that can be used as follows: `instanceOfRecipientInformation.copyWith(...)` or like so:`instanceOfRecipientInformation.copyWith.fieldName(...)`.
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
    fullName: $checkedConvert('fullName', (v) => v as String?),
    phone: $checkedConvert('phone', (v) => v as String?),
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
  'fullName': ?instance.fullName,
  'phone': ?instance.phone,
  'districtId': ?instance.districtId,
  'districtName': ?instance.districtName,
  'wardCode': ?instance.wardCode,
  'wardName': ?instance.wardName,
  'provinceId': ?instance.provinceId,
  'provinceName': ?instance.provinceName,
  'fullAddress': ?instance.fullAddress,
};
