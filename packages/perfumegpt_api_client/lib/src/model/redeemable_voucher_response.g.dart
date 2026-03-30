// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeemable_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RedeemableVoucherResponseCWProxy {
  RedeemableVoucherResponse id(String? id);

  RedeemableVoucherResponse code(String? code);

  RedeemableVoucherResponse discountValue(num? discountValue);

  RedeemableVoucherResponse discountType(DiscountType? discountType);

  RedeemableVoucherResponse requiredPoints(int? requiredPoints);

  RedeemableVoucherResponse minOrderValue(num? minOrderValue);

  RedeemableVoucherResponse expiryDate(DateTime? expiryDate);

  RedeemableVoucherResponse isExpired(bool? isExpired);

  RedeemableVoucherResponse remainingQuantity(int? remainingQuantity);

  RedeemableVoucherResponse createdAt(DateTime? createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RedeemableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RedeemableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  RedeemableVoucherResponse call({
    String? id,
    String? code,
    num? discountValue,
    DiscountType? discountType,
    int? requiredPoints,
    num? minOrderValue,
    DateTime? expiryDate,
    bool? isExpired,
    int? remainingQuantity,
    DateTime? createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRedeemableVoucherResponse.copyWith(...)` or call `instanceOfRedeemableVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$RedeemableVoucherResponseCWProxyImpl
    implements _$RedeemableVoucherResponseCWProxy {
  const _$RedeemableVoucherResponseCWProxyImpl(this._value);

  final RedeemableVoucherResponse _value;

  @override
  RedeemableVoucherResponse id(String? id) => call(id: id);

  @override
  RedeemableVoucherResponse code(String? code) => call(code: code);

  @override
  RedeemableVoucherResponse discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  RedeemableVoucherResponse discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  RedeemableVoucherResponse requiredPoints(int? requiredPoints) =>
      call(requiredPoints: requiredPoints);

  @override
  RedeemableVoucherResponse minOrderValue(num? minOrderValue) =>
      call(minOrderValue: minOrderValue);

  @override
  RedeemableVoucherResponse expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  RedeemableVoucherResponse isExpired(bool? isExpired) =>
      call(isExpired: isExpired);

  @override
  RedeemableVoucherResponse remainingQuantity(int? remainingQuantity) =>
      call(remainingQuantity: remainingQuantity);

  @override
  RedeemableVoucherResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RedeemableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RedeemableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  RedeemableVoucherResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? requiredPoints = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? isExpired = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return RedeemableVoucherResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
          : discountType as DiscountType?,
      requiredPoints: requiredPoints == const $CopyWithPlaceholder()
          ? _value.requiredPoints
          // ignore: cast_nullable_to_non_nullable
          : requiredPoints as int?,
      minOrderValue: minOrderValue == const $CopyWithPlaceholder()
          ? _value.minOrderValue
          // ignore: cast_nullable_to_non_nullable
          : minOrderValue as num?,
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime?,
      isExpired: isExpired == const $CopyWithPlaceholder()
          ? _value.isExpired
          // ignore: cast_nullable_to_non_nullable
          : isExpired as bool?,
      remainingQuantity: remainingQuantity == const $CopyWithPlaceholder()
          ? _value.remainingQuantity
          // ignore: cast_nullable_to_non_nullable
          : remainingQuantity as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $RedeemableVoucherResponseCopyWith on RedeemableVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRedeemableVoucherResponse.copyWith(...)` or `instanceOfRedeemableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RedeemableVoucherResponseCWProxy get copyWith =>
      _$RedeemableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemableVoucherResponse _$RedeemableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RedeemableVoucherResponse', json, ($checkedConvert) {
  final val = RedeemableVoucherResponse(
    id: $checkedConvert('id', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String?),
    discountValue: $checkedConvert('discountValue', (v) => v as num?),
    discountType: $checkedConvert(
      'discountType',
      (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
    ),
    requiredPoints: $checkedConvert(
      'requiredPoints',
      (v) => (v as num?)?.toInt(),
    ),
    minOrderValue: $checkedConvert('minOrderValue', (v) => v as num?),
    expiryDate: $checkedConvert(
      'expiryDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    isExpired: $checkedConvert('isExpired', (v) => v as bool?),
    remainingQuantity: $checkedConvert(
      'remainingQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$RedeemableVoucherResponseToJson(
  RedeemableVoucherResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'code': ?instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'requiredPoints': ?instance.requiredPoints,
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'isExpired': ?instance.isExpired,
  'remainingQuantity': ?instance.remainingQuantity,
  'createdAt': ?instance.createdAt?.toIso8601String(),
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};
