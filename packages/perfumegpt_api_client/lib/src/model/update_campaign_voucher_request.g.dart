// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_voucher_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCampaignVoucherRequestCWProxy {
  UpdateCampaignVoucherRequest id(String? id);

  UpdateCampaignVoucherRequest code(String? code);

  UpdateCampaignVoucherRequest discountValue(num? discountValue);

  UpdateCampaignVoucherRequest targetItemType(PromotionType? targetItemType);

  UpdateCampaignVoucherRequest discountType(DiscountType? discountType);

  UpdateCampaignVoucherRequest applyType(VoucherType? applyType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignVoucherRequest call({
    String? id,
    String? code,
    num? discountValue,
    PromotionType? targetItemType,
    DiscountType? discountType,
    VoucherType? applyType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCampaignVoucherRequest.copyWith(...)` or call `instanceOfUpdateCampaignVoucherRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCampaignVoucherRequestCWProxyImpl
    implements _$UpdateCampaignVoucherRequestCWProxy {
  const _$UpdateCampaignVoucherRequestCWProxyImpl(this._value);

  final UpdateCampaignVoucherRequest _value;

  @override
  UpdateCampaignVoucherRequest id(String? id) => call(id: id);

  @override
  UpdateCampaignVoucherRequest code(String? code) => call(code: code);

  @override
  UpdateCampaignVoucherRequest discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  UpdateCampaignVoucherRequest targetItemType(PromotionType? targetItemType) =>
      call(targetItemType: targetItemType);

  @override
  UpdateCampaignVoucherRequest discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  UpdateCampaignVoucherRequest applyType(VoucherType? applyType) =>
      call(applyType: applyType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignVoucherRequest call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? targetItemType = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? applyType = const $CopyWithPlaceholder(),
  }) {
    return UpdateCampaignVoucherRequest(
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
      targetItemType: targetItemType == const $CopyWithPlaceholder()
          ? _value.targetItemType
          // ignore: cast_nullable_to_non_nullable
          : targetItemType as PromotionType?,
      discountType: discountType == const $CopyWithPlaceholder()
          ? _value.discountType
          // ignore: cast_nullable_to_non_nullable
          : discountType as DiscountType?,
      applyType: applyType == const $CopyWithPlaceholder()
          ? _value.applyType
          // ignore: cast_nullable_to_non_nullable
          : applyType as VoucherType?,
    );
  }
}

extension $UpdateCampaignVoucherRequestCopyWith
    on UpdateCampaignVoucherRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCampaignVoucherRequest.copyWith(...)` or `instanceOfUpdateCampaignVoucherRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCampaignVoucherRequestCWProxy get copyWith =>
      _$UpdateCampaignVoucherRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCampaignVoucherRequest _$UpdateCampaignVoucherRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCampaignVoucherRequest', json, ($checkedConvert) {
  final val = UpdateCampaignVoucherRequest(
    id: $checkedConvert('id', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String?),
    discountValue: $checkedConvert('discountValue', (v) => v as num?),
    targetItemType: $checkedConvert(
      'targetItemType',
      (v) => $enumDecodeNullable(_$PromotionTypeEnumMap, v),
    ),
    discountType: $checkedConvert(
      'discountType',
      (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
    ),
    applyType: $checkedConvert(
      'applyType',
      (v) => $enumDecodeNullable(_$VoucherTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateCampaignVoucherRequestToJson(
  UpdateCampaignVoucherRequest instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'code': ?instance.code,
  'discountValue': ?instance.discountValue,
  'targetItemType': ?_$PromotionTypeEnumMap[instance.targetItemType],
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'applyType': ?_$VoucherTypeEnumMap[instance.applyType],
};

const _$PromotionTypeEnumMap = {
  PromotionType.clearance: 'Clearance',
  PromotionType.newArrival: 'NewArrival',
  PromotionType.regular: 'Regular',
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};

const _$VoucherTypeEnumMap = {
  VoucherType.order: 'Order',
  VoucherType.product: 'Product',
};
