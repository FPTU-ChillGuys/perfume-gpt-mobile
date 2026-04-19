// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserVoucherResponseCWProxy {
  UserVoucherResponse id(String? id);

  UserVoucherResponse voucherId(String? voucherId);

  UserVoucherResponse code(String code);

  UserVoucherResponse discountValue(num? discountValue);

  UserVoucherResponse discountType(DiscountType? discountType);

  UserVoucherResponse minOrderValue(num? minOrderValue);

  UserVoucherResponse expiryDate(DateTime? expiryDate);

  UserVoucherResponse isUsed(bool? isUsed);

  UserVoucherResponse status(UsageStatus? status);

  UserVoucherResponse isExpired(bool? isExpired);

  UserVoucherResponse redeemedAt(DateTime? redeemedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  UserVoucherResponse call({
    String? id,
    String? voucherId,
    String code,
    num? discountValue,
    DiscountType? discountType,
    num? minOrderValue,
    DateTime? expiryDate,
    bool? isUsed,
    UsageStatus? status,
    bool? isExpired,
    DateTime? redeemedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserVoucherResponse.copyWith(...)` or call `instanceOfUserVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$UserVoucherResponseCWProxyImpl implements _$UserVoucherResponseCWProxy {
  const _$UserVoucherResponseCWProxyImpl(this._value);

  final UserVoucherResponse _value;

  @override
  UserVoucherResponse id(String? id) => call(id: id);

  @override
  UserVoucherResponse voucherId(String? voucherId) =>
      call(voucherId: voucherId);

  @override
  UserVoucherResponse code(String code) => call(code: code);

  @override
  UserVoucherResponse discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  UserVoucherResponse discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  UserVoucherResponse minOrderValue(num? minOrderValue) =>
      call(minOrderValue: minOrderValue);

  @override
  UserVoucherResponse expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  UserVoucherResponse isUsed(bool? isUsed) => call(isUsed: isUsed);

  @override
  UserVoucherResponse status(UsageStatus? status) => call(status: status);

  @override
  UserVoucherResponse isExpired(bool? isExpired) => call(isExpired: isExpired);

  @override
  UserVoucherResponse redeemedAt(DateTime? redeemedAt) =>
      call(redeemedAt: redeemedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
      discountValue: discountValue == const $CopyWithPlaceholder()
          ? _value.discountValue
          // ignore: cast_nullable_to_non_nullable
          : discountValue as num?,
      discountType: discountType == const $CopyWithPlaceholder()
          ? _value.discountType
          // ignore: cast_nullable_to_non_nullable
          : discountType as DiscountType?,
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
          : status as UsageStatus?,
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserVoucherResponse.copyWith(...)` or `instanceOfUserVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserVoucherResponseCWProxy get copyWith =>
      _$UserVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVoucherResponse _$UserVoucherResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserVoucherResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['code']);
      final val = UserVoucherResponse(
        id: $checkedConvert('id', (v) => v as String?),
        voucherId: $checkedConvert('voucherId', (v) => v as String?),
        code: $checkedConvert('code', (v) => v as String),
        discountValue: $checkedConvert('discountValue', (v) => v as num?),
        discountType: $checkedConvert(
          'discountType',
          (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
        ),
        minOrderValue: $checkedConvert('minOrderValue', (v) => v as num?),
        expiryDate: $checkedConvert(
          'expiryDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        isUsed: $checkedConvert('isUsed', (v) => v as bool?),
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$UsageStatusEnumMap, v),
        ),
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
  'code': instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'isUsed': ?instance.isUsed,
  'status': ?_$UsageStatusEnumMap[instance.status],
  'isExpired': ?instance.isExpired,
  'redeemedAt': ?instance.redeemedAt?.toIso8601String(),
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};

const _$UsageStatusEnumMap = {
  UsageStatus.available: 'Available',
  UsageStatus.reserved: 'Reserved',
  UsageStatus.used: 'Used',
};
