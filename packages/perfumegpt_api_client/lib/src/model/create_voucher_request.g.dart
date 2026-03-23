// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_voucher_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateVoucherRequestCWProxy {
  CreateVoucherRequest code(String? code);

  CreateVoucherRequest discountValue(num? discountValue);

  CreateVoucherRequest discountType(DiscountType? discountType);

  CreateVoucherRequest requiredPoints(int? requiredPoints);

  CreateVoucherRequest minOrderValue(num? minOrderValue);

  CreateVoucherRequest expiryDate(DateTime? expiryDate);

  CreateVoucherRequest totalQuantity(int? totalQuantity);

  CreateVoucherRequest isPublic(bool? isPublic);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateVoucherRequest call({
    String? code,
    num? discountValue,
    DiscountType? discountType,
    int? requiredPoints,
    num? minOrderValue,
    DateTime? expiryDate,
    int? totalQuantity,
    bool? isPublic,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateVoucherRequest.copyWith(...)` or call `instanceOfCreateVoucherRequest.copyWith.fieldName(value)` for a single field.
class _$CreateVoucherRequestCWProxyImpl
    implements _$CreateVoucherRequestCWProxy {
  const _$CreateVoucherRequestCWProxyImpl(this._value);

  final CreateVoucherRequest _value;

  @override
  CreateVoucherRequest code(String? code) => call(code: code);

  @override
  CreateVoucherRequest discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  CreateVoucherRequest discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  CreateVoucherRequest requiredPoints(int? requiredPoints) =>
      call(requiredPoints: requiredPoints);

  @override
  CreateVoucherRequest minOrderValue(num? minOrderValue) =>
      call(minOrderValue: minOrderValue);

  @override
  CreateVoucherRequest expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  CreateVoucherRequest totalQuantity(int? totalQuantity) =>
      call(totalQuantity: totalQuantity);

  @override
  CreateVoucherRequest isPublic(bool? isPublic) => call(isPublic: isPublic);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateVoucherRequest call({
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? requiredPoints = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? isPublic = const $CopyWithPlaceholder(),
  }) {
    return CreateVoucherRequest(
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
      totalQuantity: totalQuantity == const $CopyWithPlaceholder()
          ? _value.totalQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalQuantity as int?,
      isPublic: isPublic == const $CopyWithPlaceholder()
          ? _value.isPublic
          // ignore: cast_nullable_to_non_nullable
          : isPublic as bool?,
    );
  }
}

extension $CreateVoucherRequestCopyWith on CreateVoucherRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateVoucherRequest.copyWith(...)` or `instanceOfCreateVoucherRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateVoucherRequestCWProxy get copyWith =>
      _$CreateVoucherRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateVoucherRequest _$CreateVoucherRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateVoucherRequest', json, ($checkedConvert) {
  final val = CreateVoucherRequest(
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
    totalQuantity: $checkedConvert(
      'totalQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    isPublic: $checkedConvert('isPublic', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$CreateVoucherRequestToJson(
  CreateVoucherRequest instance,
) => <String, dynamic>{
  'code': ?instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'requiredPoints': ?instance.requiredPoints,
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'totalQuantity': ?instance.totalQuantity,
  'isPublic': ?instance.isPublic,
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixed: 'Fixed',
};
