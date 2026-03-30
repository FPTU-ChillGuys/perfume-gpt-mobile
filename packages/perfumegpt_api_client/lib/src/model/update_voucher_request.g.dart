// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_voucher_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateVoucherRequestCWProxy {
  UpdateVoucherRequest code(String? code);

  UpdateVoucherRequest discountValue(num? discountValue);

  UpdateVoucherRequest discountType(DiscountType? discountType);

  UpdateVoucherRequest applyType(VoucherType? applyType);

  UpdateVoucherRequest requiredPoints(int? requiredPoints);

  UpdateVoucherRequest minOrderValue(num? minOrderValue);

  UpdateVoucherRequest expiryDate(DateTime? expiryDate);

  UpdateVoucherRequest totalQuantity(int? totalQuantity);

  UpdateVoucherRequest remainingQuantity(int? remainingQuantity);

  UpdateVoucherRequest isPublic(bool? isPublic);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateVoucherRequest call({
    String? code,
    num? discountValue,
    DiscountType? discountType,
    VoucherType? applyType,
    int? requiredPoints,
    num? minOrderValue,
    DateTime? expiryDate,
    int? totalQuantity,
    int? remainingQuantity,
    bool? isPublic,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateVoucherRequest.copyWith(...)` or call `instanceOfUpdateVoucherRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateVoucherRequestCWProxyImpl
    implements _$UpdateVoucherRequestCWProxy {
  const _$UpdateVoucherRequestCWProxyImpl(this._value);

  final UpdateVoucherRequest _value;

  @override
  UpdateVoucherRequest code(String? code) => call(code: code);

  @override
  UpdateVoucherRequest discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  UpdateVoucherRequest discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  UpdateVoucherRequest applyType(VoucherType? applyType) =>
      call(applyType: applyType);

  @override
  UpdateVoucherRequest requiredPoints(int? requiredPoints) =>
      call(requiredPoints: requiredPoints);

  @override
  UpdateVoucherRequest minOrderValue(num? minOrderValue) =>
      call(minOrderValue: minOrderValue);

  @override
  UpdateVoucherRequest expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  UpdateVoucherRequest totalQuantity(int? totalQuantity) =>
      call(totalQuantity: totalQuantity);

  @override
  UpdateVoucherRequest remainingQuantity(int? remainingQuantity) =>
      call(remainingQuantity: remainingQuantity);

  @override
  UpdateVoucherRequest isPublic(bool? isPublic) => call(isPublic: isPublic);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateVoucherRequest call({
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? applyType = const $CopyWithPlaceholder(),
    Object? requiredPoints = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
    Object? isPublic = const $CopyWithPlaceholder(),
  }) {
    return UpdateVoucherRequest(
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
      applyType: applyType == const $CopyWithPlaceholder()
          ? _value.applyType
          // ignore: cast_nullable_to_non_nullable
          : applyType as VoucherType?,
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
    );
  }
}

extension $UpdateVoucherRequestCopyWith on UpdateVoucherRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateVoucherRequest.copyWith(...)` or `instanceOfUpdateVoucherRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateVoucherRequestCWProxy get copyWith =>
      _$UpdateVoucherRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateVoucherRequest _$UpdateVoucherRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateVoucherRequest', json, ($checkedConvert) {
  final val = UpdateVoucherRequest(
    code: $checkedConvert('code', (v) => v as String?),
    discountValue: $checkedConvert('discountValue', (v) => v as num?),
    discountType: $checkedConvert(
      'discountType',
      (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
    ),
    applyType: $checkedConvert(
      'applyType',
      (v) => $enumDecodeNullable(_$VoucherTypeEnumMap, v),
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
    totalQuantity: $checkedConvert(
      'totalQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    remainingQuantity: $checkedConvert(
      'remainingQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    isPublic: $checkedConvert('isPublic', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$UpdateVoucherRequestToJson(
  UpdateVoucherRequest instance,
) => <String, dynamic>{
  'code': ?instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'applyType': ?_$VoucherTypeEnumMap[instance.applyType],
  'requiredPoints': ?instance.requiredPoints,
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'totalQuantity': ?instance.totalQuantity,
  'remainingQuantity': ?instance.remainingQuantity,
  'isPublic': ?instance.isPublic,
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};

const _$VoucherTypeEnumMap = {
  VoucherType.order: 'Order',
  VoucherType.product: 'Product',
};
