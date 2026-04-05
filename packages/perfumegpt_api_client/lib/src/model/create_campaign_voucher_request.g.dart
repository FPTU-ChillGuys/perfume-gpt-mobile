// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_campaign_voucher_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCampaignVoucherRequestCWProxy {
  CreateCampaignVoucherRequest code(String code);

  CreateCampaignVoucherRequest discountValue(num? discountValue);

  CreateCampaignVoucherRequest targetItemType(PromotionType? targetItemType);

  CreateCampaignVoucherRequest discountType(DiscountType? discountType);

  CreateCampaignVoucherRequest applyType(VoucherType? applyType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCampaignVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCampaignVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCampaignVoucherRequest call({
    String code,
    num? discountValue,
    PromotionType? targetItemType,
    DiscountType? discountType,
    VoucherType? applyType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateCampaignVoucherRequest.copyWith(...)` or call `instanceOfCreateCampaignVoucherRequest.copyWith.fieldName(value)` for a single field.
class _$CreateCampaignVoucherRequestCWProxyImpl
    implements _$CreateCampaignVoucherRequestCWProxy {
  const _$CreateCampaignVoucherRequestCWProxyImpl(this._value);

  final CreateCampaignVoucherRequest _value;

  @override
  CreateCampaignVoucherRequest code(String code) => call(code: code);

  @override
  CreateCampaignVoucherRequest discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  CreateCampaignVoucherRequest targetItemType(PromotionType? targetItemType) =>
      call(targetItemType: targetItemType);

  @override
  CreateCampaignVoucherRequest discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  CreateCampaignVoucherRequest applyType(VoucherType? applyType) =>
      call(applyType: applyType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCampaignVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCampaignVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCampaignVoucherRequest call({
    Object? code = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? targetItemType = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? applyType = const $CopyWithPlaceholder(),
  }) {
    return CreateCampaignVoucherRequest(
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
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

extension $CreateCampaignVoucherRequestCopyWith
    on CreateCampaignVoucherRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateCampaignVoucherRequest.copyWith(...)` or `instanceOfCreateCampaignVoucherRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateCampaignVoucherRequestCWProxy get copyWith =>
      _$CreateCampaignVoucherRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCampaignVoucherRequest _$CreateCampaignVoucherRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCampaignVoucherRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code']);
  final val = CreateCampaignVoucherRequest(
    code: $checkedConvert('code', (v) => v as String),
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

Map<String, dynamic> _$CreateCampaignVoucherRequestToJson(
  CreateCampaignVoucherRequest instance,
) => <String, dynamic>{
  'code': instance.code,
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
