// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicable_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApplicableVoucherResponseCWProxy {
  ApplicableVoucherResponse voucherId(String? voucherId);

  ApplicableVoucherResponse code(String code);

  ApplicableVoucherResponse discountValue(num? discountValue);

  ApplicableVoucherResponse discountType(DiscountType? discountType);

  ApplicableVoucherResponse isApplicable(bool? isApplicable);

  ApplicableVoucherResponse ineligibleReason(String? ineligibleReason);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ApplicableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ApplicableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ApplicableVoucherResponse call({
    String? voucherId,
    String code,
    num? discountValue,
    DiscountType? discountType,
    bool? isApplicable,
    String? ineligibleReason,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfApplicableVoucherResponse.copyWith(...)` or call `instanceOfApplicableVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$ApplicableVoucherResponseCWProxyImpl
    implements _$ApplicableVoucherResponseCWProxy {
  const _$ApplicableVoucherResponseCWProxyImpl(this._value);

  final ApplicableVoucherResponse _value;

  @override
  ApplicableVoucherResponse voucherId(String? voucherId) =>
      call(voucherId: voucherId);

  @override
  ApplicableVoucherResponse code(String code) => call(code: code);

  @override
  ApplicableVoucherResponse discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  ApplicableVoucherResponse discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  ApplicableVoucherResponse isApplicable(bool? isApplicable) =>
      call(isApplicable: isApplicable);

  @override
  ApplicableVoucherResponse ineligibleReason(String? ineligibleReason) =>
      call(ineligibleReason: ineligibleReason);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ApplicableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ApplicableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ApplicableVoucherResponse call({
    Object? voucherId = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? isApplicable = const $CopyWithPlaceholder(),
    Object? ineligibleReason = const $CopyWithPlaceholder(),
  }) {
    return ApplicableVoucherResponse(
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
      isApplicable: isApplicable == const $CopyWithPlaceholder()
          ? _value.isApplicable
          // ignore: cast_nullable_to_non_nullable
          : isApplicable as bool?,
      ineligibleReason: ineligibleReason == const $CopyWithPlaceholder()
          ? _value.ineligibleReason
          // ignore: cast_nullable_to_non_nullable
          : ineligibleReason as String?,
    );
  }
}

extension $ApplicableVoucherResponseCopyWith on ApplicableVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfApplicableVoucherResponse.copyWith(...)` or `instanceOfApplicableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApplicableVoucherResponseCWProxy get copyWith =>
      _$ApplicableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicableVoucherResponse _$ApplicableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApplicableVoucherResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code']);
  final val = ApplicableVoucherResponse(
    voucherId: $checkedConvert('voucherId', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String),
    discountValue: $checkedConvert('discountValue', (v) => v as num?),
    discountType: $checkedConvert(
      'discountType',
      (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
    ),
    isApplicable: $checkedConvert('isApplicable', (v) => v as bool?),
    ineligibleReason: $checkedConvert('ineligibleReason', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ApplicableVoucherResponseToJson(
  ApplicableVoucherResponse instance,
) => <String, dynamic>{
  'voucherId': ?instance.voucherId,
  'code': instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'isApplicable': ?instance.isApplicable,
  'ineligibleReason': ?instance.ineligibleReason,
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};
