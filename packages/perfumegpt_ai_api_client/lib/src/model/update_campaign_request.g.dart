// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCampaignRequestCWProxy {
  UpdateCampaignRequest name(String name);

  UpdateCampaignRequest description(String? description);

  UpdateCampaignRequest startDate(DateTime? startDate);

  UpdateCampaignRequest endDate(DateTime? endDate);

  UpdateCampaignRequest type(CampaignType? type);

  UpdateCampaignRequest items(List<UpdateCampaignPromotionItemRequest> items);

  UpdateCampaignRequest vouchers(List<UpdateCampaignVoucherRequest> vouchers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignRequest call({
    String name,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    CampaignType? type,
    List<UpdateCampaignPromotionItemRequest> items,
    List<UpdateCampaignVoucherRequest> vouchers,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCampaignRequest.copyWith(...)` or call `instanceOfUpdateCampaignRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCampaignRequestCWProxyImpl
    implements _$UpdateCampaignRequestCWProxy {
  const _$UpdateCampaignRequestCWProxyImpl(this._value);

  final UpdateCampaignRequest _value;

  @override
  UpdateCampaignRequest name(String name) => call(name: name);

  @override
  UpdateCampaignRequest description(String? description) =>
      call(description: description);

  @override
  UpdateCampaignRequest startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  UpdateCampaignRequest endDate(DateTime? endDate) => call(endDate: endDate);

  @override
  UpdateCampaignRequest type(CampaignType? type) => call(type: type);

  @override
  UpdateCampaignRequest items(List<UpdateCampaignPromotionItemRequest> items) =>
      call(items: items);

  @override
  UpdateCampaignRequest vouchers(List<UpdateCampaignVoucherRequest> vouchers) =>
      call(vouchers: vouchers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? vouchers = const $CopyWithPlaceholder(),
  }) {
    return UpdateCampaignRequest(
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
          : items as List<UpdateCampaignPromotionItemRequest>,
      vouchers: vouchers == const $CopyWithPlaceholder() || vouchers == null
          ? _value.vouchers
          // ignore: cast_nullable_to_non_nullable
          : vouchers as List<UpdateCampaignVoucherRequest>,
    );
  }
}

extension $UpdateCampaignRequestCopyWith on UpdateCampaignRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCampaignRequest.copyWith(...)` or `instanceOfUpdateCampaignRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCampaignRequestCWProxy get copyWith =>
      _$UpdateCampaignRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCampaignRequest _$UpdateCampaignRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCampaignRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name', 'items', 'vouchers']);
  final val = UpdateCampaignRequest(
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
            (e) => UpdateCampaignPromotionItemRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    vouchers: $checkedConvert(
      'vouchers',
      (v) => (v as List<dynamic>)
          .map(
            (e) => UpdateCampaignVoucherRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateCampaignRequestToJson(
  UpdateCampaignRequest instance,
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
