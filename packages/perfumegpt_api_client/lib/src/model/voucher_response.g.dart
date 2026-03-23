// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VoucherResponseCWProxy {
  VoucherResponse id(String? id);

  VoucherResponse code(String? code);

  VoucherResponse discountValue(num? discountValue);

  VoucherResponse discountType(DiscountType? discountType);

  VoucherResponse requiredPoints(int? requiredPoints);

  VoucherResponse minOrderValue(num? minOrderValue);

  VoucherResponse expiryDate(DateTime? expiryDate);

  VoucherResponse isExpired(bool? isExpired);

  VoucherResponse totalQuantity(int? totalQuantity);

  VoucherResponse remainingQuantity(int? remainingQuantity);

  VoucherResponse isPublic(bool? isPublic);

  VoucherResponse createdAt(DateTime? createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VoucherResponse call({
    String? id,
    String? code,
    num? discountValue,
    DiscountType? discountType,
    int? requiredPoints,
    num? minOrderValue,
    DateTime? expiryDate,
    bool? isExpired,
    int? totalQuantity,
    int? remainingQuantity,
    bool? isPublic,
    DateTime? createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVoucherResponse.copyWith(...)` or call `instanceOfVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$VoucherResponseCWProxyImpl implements _$VoucherResponseCWProxy {
  const _$VoucherResponseCWProxyImpl(this._value);

  final VoucherResponse _value;

  @override
  VoucherResponse id(String? id) => call(id: id);

  @override
  VoucherResponse code(String? code) => call(code: code);

  @override
  VoucherResponse discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  VoucherResponse discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  VoucherResponse requiredPoints(int? requiredPoints) =>
      call(requiredPoints: requiredPoints);

  @override
  VoucherResponse minOrderValue(num? minOrderValue) =>
      call(minOrderValue: minOrderValue);

  @override
  VoucherResponse expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  VoucherResponse isExpired(bool? isExpired) => call(isExpired: isExpired);

  @override
  VoucherResponse totalQuantity(int? totalQuantity) =>
      call(totalQuantity: totalQuantity);

  @override
  VoucherResponse remainingQuantity(int? remainingQuantity) =>
      call(remainingQuantity: remainingQuantity);

  @override
  VoucherResponse isPublic(bool? isPublic) => call(isPublic: isPublic);

  @override
  VoucherResponse createdAt(DateTime? createdAt) => call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VoucherResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? requiredPoints = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? isExpired = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
    Object? isPublic = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return VoucherResponse(
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
      totalQuantity: totalQuantity == const $CopyWithPlaceholder()
          ? _value.totalQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalQuantity as int?,
      remainingQuantity: remainingQuantity == const $CopyWithPlaceholder()
          ? _value.remainingQuantity
          // ignore: cast_nullable_to_non_nullable
          : remainingQuantity as int?,
      isPublic: isPublic == const $CopyWithPlaceholder()
          ? _value.isPublic
          // ignore: cast_nullable_to_non_nullable
          : isPublic as bool?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $VoucherResponseCopyWith on VoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVoucherResponse.copyWith(...)` or `instanceOfVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VoucherResponseCWProxy get copyWith => _$VoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoucherResponse _$VoucherResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VoucherResponse', json, ($checkedConvert) {
      final val = VoucherResponse(
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
        totalQuantity: $checkedConvert(
          'totalQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        remainingQuantity: $checkedConvert(
          'remainingQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        isPublic: $checkedConvert('isPublic', (v) => v as bool?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VoucherResponseToJson(VoucherResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'code': ?instance.code,
      'discountValue': ?instance.discountValue,
      'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
      'requiredPoints': ?instance.requiredPoints,
      'minOrderValue': ?instance.minOrderValue,
      'expiryDate': ?instance.expiryDate?.toIso8601String(),
      'isExpired': ?instance.isExpired,
      'totalQuantity': ?instance.totalQuantity,
      'remainingQuantity': ?instance.remainingQuantity,
      'isPublic': ?instance.isPublic,
      'createdAt': ?instance.createdAt?.toIso8601String(),
    };

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixed: 'Fixed',
};
