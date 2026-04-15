// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AvailableVoucherResponseCWProxy {
  AvailableVoucherResponse id(String? id);

  AvailableVoucherResponse code(String code);

  AvailableVoucherResponse discountValue(num? discountValue);

  AvailableVoucherResponse discountType(DiscountType? discountType);

  AvailableVoucherResponse maxDiscountAmount(num? maxDiscountAmount);

  AvailableVoucherResponse minOrderValue(num? minOrderValue);

  AvailableVoucherResponse expiryDate(DateTime? expiryDate);

  AvailableVoucherResponse remainingQuantity(int? remainingQuantity);

  AvailableVoucherResponse maxUsagePerUser(int? maxUsagePerUser);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AvailableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AvailableVoucherResponse call({
    String? id,
    String code,
    num? discountValue,
    DiscountType? discountType,
    num? maxDiscountAmount,
    num? minOrderValue,
    DateTime? expiryDate,
    int? remainingQuantity,
    int? maxUsagePerUser,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAvailableVoucherResponse.copyWith(...)` or call `instanceOfAvailableVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$AvailableVoucherResponseCWProxyImpl
    implements _$AvailableVoucherResponseCWProxy {
  const _$AvailableVoucherResponseCWProxyImpl(this._value);

  final AvailableVoucherResponse _value;

  @override
  AvailableVoucherResponse id(String? id) => call(id: id);

  @override
  AvailableVoucherResponse code(String code) => call(code: code);

  @override
  AvailableVoucherResponse discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  AvailableVoucherResponse discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  AvailableVoucherResponse maxDiscountAmount(num? maxDiscountAmount) =>
      call(maxDiscountAmount: maxDiscountAmount);

  @override
  AvailableVoucherResponse minOrderValue(num? minOrderValue) =>
      call(minOrderValue: minOrderValue);

  @override
  AvailableVoucherResponse expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  AvailableVoucherResponse remainingQuantity(int? remainingQuantity) =>
      call(remainingQuantity: remainingQuantity);

  @override
  AvailableVoucherResponse maxUsagePerUser(int? maxUsagePerUser) =>
      call(maxUsagePerUser: maxUsagePerUser);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AvailableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AvailableVoucherResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? maxDiscountAmount = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
    Object? maxUsagePerUser = const $CopyWithPlaceholder(),
  }) {
    return AvailableVoucherResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
      maxDiscountAmount: maxDiscountAmount == const $CopyWithPlaceholder()
          ? _value.maxDiscountAmount
          // ignore: cast_nullable_to_non_nullable
          : maxDiscountAmount as num?,
      minOrderValue: minOrderValue == const $CopyWithPlaceholder()
          ? _value.minOrderValue
          // ignore: cast_nullable_to_non_nullable
          : minOrderValue as num?,
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime?,
      remainingQuantity: remainingQuantity == const $CopyWithPlaceholder()
          ? _value.remainingQuantity
          // ignore: cast_nullable_to_non_nullable
          : remainingQuantity as int?,
      maxUsagePerUser: maxUsagePerUser == const $CopyWithPlaceholder()
          ? _value.maxUsagePerUser
          // ignore: cast_nullable_to_non_nullable
          : maxUsagePerUser as int?,
    );
  }
}

extension $AvailableVoucherResponseCopyWith on AvailableVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAvailableVoucherResponse.copyWith(...)` or `instanceOfAvailableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AvailableVoucherResponseCWProxy get copyWith =>
      _$AvailableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableVoucherResponse _$AvailableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AvailableVoucherResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code']);
  final val = AvailableVoucherResponse(
    id: $checkedConvert('id', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String),
    discountValue: $checkedConvert('discountValue', (v) => v as num?),
    discountType: $checkedConvert(
      'discountType',
      (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
    ),
    maxDiscountAmount: $checkedConvert('maxDiscountAmount', (v) => v as num?),
    minOrderValue: $checkedConvert('minOrderValue', (v) => v as num?),
    expiryDate: $checkedConvert(
      'expiryDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    remainingQuantity: $checkedConvert(
      'remainingQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    maxUsagePerUser: $checkedConvert(
      'maxUsagePerUser',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AvailableVoucherResponseToJson(
  AvailableVoucherResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'code': instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'maxDiscountAmount': ?instance.maxDiscountAmount,
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'remainingQuantity': ?instance.remainingQuantity,
  'maxUsagePerUser': ?instance.maxUsagePerUser,
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};
