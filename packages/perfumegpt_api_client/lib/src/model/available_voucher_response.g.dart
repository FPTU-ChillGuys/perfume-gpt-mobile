// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AvailableVoucherResponseCWProxy {
  AvailableVoucherResponse id(String? id);

  AvailableVoucherResponse code(String? code);

  AvailableVoucherResponse discountValue(num? discountValue);

  AvailableVoucherResponse discountType(DiscountType? discountType);

  AvailableVoucherResponse minOrderValue(num? minOrderValue);

  AvailableVoucherResponse expiryDate(DateTime? expiryDate);

  AvailableVoucherResponse remainingQuantity(int? remainingQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AvailableVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  AvailableVoucherResponse call({
    String? id,
    String? code,
    num? discountValue,
    DiscountType? discountType,
    num? minOrderValue,
    DateTime? expiryDate,
    int? remainingQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAvailableVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAvailableVoucherResponse.copyWith.fieldName(...)`
class _$AvailableVoucherResponseCWProxyImpl
    implements _$AvailableVoucherResponseCWProxy {
  const _$AvailableVoucherResponseCWProxyImpl(this._value);

  final AvailableVoucherResponse _value;

  @override
  AvailableVoucherResponse id(String? id) => this(id: id);

  @override
  AvailableVoucherResponse code(String? code) => this(code: code);

  @override
  AvailableVoucherResponse discountValue(num? discountValue) =>
      this(discountValue: discountValue);

  @override
  AvailableVoucherResponse discountType(DiscountType? discountType) =>
      this(discountType: discountType);

  @override
  AvailableVoucherResponse minOrderValue(num? minOrderValue) =>
      this(minOrderValue: minOrderValue);

  @override
  AvailableVoucherResponse expiryDate(DateTime? expiryDate) =>
      this(expiryDate: expiryDate);

  @override
  AvailableVoucherResponse remainingQuantity(int? remainingQuantity) =>
      this(remainingQuantity: remainingQuantity);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AvailableVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  AvailableVoucherResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? minOrderValue = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
  }) {
    return AvailableVoucherResponse(
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
    );
  }
}

extension $AvailableVoucherResponseCopyWith on AvailableVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfAvailableVoucherResponse.copyWith(...)` or like so:`instanceOfAvailableVoucherResponse.copyWith.fieldName(...)`.
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
  final val = AvailableVoucherResponse(
    id: $checkedConvert('id', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String?),
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
    remainingQuantity: $checkedConvert(
      'remainingQuantity',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AvailableVoucherResponseToJson(
  AvailableVoucherResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'code': ?instance.code,
  'discountValue': ?instance.discountValue,
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'minOrderValue': ?instance.minOrderValue,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'remainingQuantity': ?instance.remainingQuantity,
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixed: 'Fixed',
};
