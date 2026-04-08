// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_campaign_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCampaignRequestCWProxy {
  CreateCampaignRequest name(String name);

  CreateCampaignRequest description(String? description);

  CreateCampaignRequest startDate(DateTime? startDate);

  CreateCampaignRequest endDate(DateTime? endDate);

  CreateCampaignRequest type(CampaignType? type);

  CreateCampaignRequest items(List<CreateCampaignPromotionItemRequest> items);

  CreateCampaignRequest vouchers(List<CreateCampaignVoucherRequest> vouchers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCampaignRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCampaignRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCampaignRequest call({
    String name,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    CampaignType? type,
    List<CreateCampaignPromotionItemRequest> items,
    List<CreateCampaignVoucherRequest> vouchers,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateCampaignRequest.copyWith(...)` or call `instanceOfCreateCampaignRequest.copyWith.fieldName(value)` for a single field.
class _$CreateCampaignRequestCWProxyImpl
    implements _$CreateCampaignRequestCWProxy {
  const _$CreateCampaignRequestCWProxyImpl(this._value);

  final CreateCampaignRequest _value;

  @override
  CreateCampaignRequest name(String name) => call(name: name);

  @override
  CreateCampaignRequest description(String? description) =>
      call(description: description);

  @override
  CreateCampaignRequest startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  CreateCampaignRequest endDate(DateTime? endDate) => call(endDate: endDate);

  @override
  CreateCampaignRequest type(CampaignType? type) => call(type: type);

  @override
  CreateCampaignRequest items(List<CreateCampaignPromotionItemRequest> items) =>
      call(items: items);

  @override
  CreateCampaignRequest vouchers(List<CreateCampaignVoucherRequest> vouchers) =>
      call(vouchers: vouchers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCampaignRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCampaignRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCampaignRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? vouchers = const $CopyWithPlaceholder(),
  }) {
    return CreateCampaignRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as CampaignType?,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<CreateCampaignPromotionItemRequest>,
      vouchers: vouchers == const $CopyWithPlaceholder() || vouchers == null
          ? _value.vouchers
          // ignore: cast_nullable_to_non_nullable
          : vouchers as List<CreateCampaignVoucherRequest>,
    );
  }
}

extension $CreateCampaignRequestCopyWith on CreateCampaignRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateCampaignRequest.copyWith(...)` or `instanceOfCreateCampaignRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateCampaignRequestCWProxy get copyWith =>
      _$CreateCampaignRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCampaignRequest _$CreateCampaignRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCampaignRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name', 'items', 'vouchers']);
  final val = CreateCampaignRequest(
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    startDate: $checkedConvert(
      'startDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endDate: $checkedConvert(
      'endDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$CampaignTypeEnumMap, v),
    ),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map(
            (e) => CreateCampaignPromotionItemRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    vouchers: $checkedConvert(
      'vouchers',
      (v) => (v as List<dynamic>)
          .map(
            (e) => CreateCampaignVoucherRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateCampaignRequestToJson(
  CreateCampaignRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': ?instance.description,
  'startDate': ?instance.startDate?.toIso8601String(),
  'endDate': ?instance.endDate?.toIso8601String(),
  'type': ?_$CampaignTypeEnumMap[instance.type],
  'items': instance.items.map((e) => e.toJson()).toList(),
  'vouchers': instance.vouchers.map((e) => e.toJson()).toList(),
};

const _$CampaignTypeEnumMap = {
  CampaignType.flashSale: 'FlashSale',
  CampaignType.clearance: 'Clearance',
};
