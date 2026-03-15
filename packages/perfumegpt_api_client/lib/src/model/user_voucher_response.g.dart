// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserVoucherResponseCWProxy {
  UserVoucherResponse id(String? id);

  UserVoucherResponse voucherId(String? voucherId);

  UserVoucherResponse code(String? code);

  UserVoucherResponse discountValue(num? discountValue);

  UserVoucherResponse discountType(String? discountType);

  UserVoucherResponse minOrderValue(num? minOrderValue);

  UserVoucherResponse expiryDate(DateTime? expiryDate);

  UserVoucherResponse isUsed(bool? isUsed);

  UserVoucherResponse status(String? status);

  UserVoucherResponse isExpired(bool? isExpired);

  UserVoucherResponse redeemedAt(DateTime? redeemedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserVoucherResponse call({
    String? id,
    String? voucherId,
    String? code,
    num? discountValue,
    String? discountType,
    num? minOrderValue,
    DateTime? expiryDate,
    bool? isUsed,
    String? status,
    bool? isExpired,
    DateTime? redeemedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserVoucherResponse.copyWith.fieldName(...)`
class _$UserVoucherResponseCWProxyImpl implements _$UserVoucherResponseCWProxy {
  const _$UserVoucherResponseCWProxyImpl(this._value);

  final UserVoucherResponse _value;

  @override
  UserVoucherResponse id(String? id) => this(id: id);

  @override
  UserVoucherResponse voucherId(String? voucherId) =>
      this(voucherId: voucherId);

  @override
  UserVoucherResponse code(String? code) => this(code: code);

  @override
  UserVoucherResponse discountValue(num? discountValue) =>
      this(discountValue: discountValue);

  @override
  UserVoucherResponse discountType(String? discountType) =>
      this(discountType: discountType);

  @override
  UserVoucherResponse minOrderValue(num? minOrderValue) =>
      this(minOrderValue: minOrderValue);

  @override
  UserVoucherResponse expiryDate(DateTime? expiryDate) =>
      this(expiryDate: expiryDate);

  @override
  UserVoucherResponse isUsed(bool? isUsed) => this(isUsed: isUsed);

  @override
  UserVoucherResponse status(String? status) => this(status: status);

  @override
  UserVoucherResponse isExpired(bool? isExpired) => this(isExpired: isExpired);

  @override
  UserVoucherResponse redeemedAt(DateTime? redeemedAt) =>
      this(redeemedAt: redeemedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserVoucherResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? voucherId = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? isUsed = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? isExpired = const $CopyWithPlaceholder(),
    Object? redeemedAt = const $CopyWithPlaceholder(),
  }) {
    return UserVoucherResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      voucherId: voucherId == const $CopyWithPlaceholder()
          ? _value.voucherId
          // ignore: cast_nullable_to_non_nullable
          : voucherId as String?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String?,
      discountValue: discountValue == const $CopyWithPlaceholder()
          ? _value.discountValue
          // ignore: cast_nullable_to_non_nullable
          : discountValue as num?,
      discountType: discountType == const $CopyWithPlaceholder()
          ? _value.discountType
          // ignore: cast_nullable_to_non_nullable
          : discountType as String?,
      minOrderValue: minOrderValue == const $CopyWithPlaceholder()
          ? _value.minOrderValue
          // ignore: cast_nullable_to_non_nullable
          : minOrderValue as num?,
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime?,
      isUsed: isUsed == const $CopyWithPlaceholder()
          ? _value.isUsed
          // ignore: cast_nullable_to_non_nullable
          : isUsed as bool?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
      isExpired: isExpired == const $CopyWithPlaceholder()
          ? _value.isExpired
          // ignore: cast_nullable_to_non_nullable
          : isExpired as bool?,
      redeemedAt: redeemedAt == const $CopyWithPlaceholder()
          ? _value.redeemedAt
          // ignore: cast_nullable_to_non_nullable
          : redeemedAt as DateTime?,
    );
  }
}

extension $UserVoucherResponseCopyWith on UserVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUserVoucherResponse.copyWith(...)` or like so:`instanceOfUserVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserVoucherResponseCWProxy get copyWith =>
      _$UserVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVoucherResponse _$UserVoucherResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserVoucherResponse', json, ($checkedConvert) {
      final val = UserVoucherResponse(
        id: $checkedConvert('id', (v) => v as String?),
        voucherId: $checkedConvert('voucherId', (v) => v as String?),
        code: $checkedConvert('code', (v) => v as String?),
        discountValue: $checkedConvert('discountValue', (v) => v as num?),
        discountType: $checkedConvert('discountType', (v) => v as String?),
        minOrderValue: $checkedConvert('minOrderValue', (v) => v as num?),
        expiryDate: $checkedConvert(
          'expiryDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        isUsed: $checkedConvert('isUsed', (v) => v as bool?),
        status: $checkedConvert('status', (v) => v as String?),
        isExpired: $checkedConvert('isExpired', (v) => v as bool?),
        redeemedAt: $checkedConvert(
          'redeemedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserVoucherResponseToJson(
  UserVoucherResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'voucherId': ?instance.voucherId,
  'code': ?instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?instance.discountType,
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'isUsed': ?instance.isUsed,
  'status': ?instance.status,
  'isExpired': ?instance.isExpired,
  'redeemedAt': ?instance.redeemedAt?.toIso8601String(),
};
