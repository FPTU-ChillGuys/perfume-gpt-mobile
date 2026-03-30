// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CampaignResponseCWProxy {
  CampaignResponse id(String? id);

  CampaignResponse name(String? name);

  CampaignResponse description(String? description);

  CampaignResponse startDate(DateTime? startDate);

  CampaignResponse endDate(DateTime? endDate);

  CampaignResponse type(CampaignType? type);

  CampaignResponse status(CampaignStatus? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CampaignResponse call({
    String? id,
    String? name,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    CampaignType? type,
    CampaignStatus? status,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCampaignResponse.copyWith(...)` or call `instanceOfCampaignResponse.copyWith.fieldName(value)` for a single field.
class _$CampaignResponseCWProxyImpl implements _$CampaignResponseCWProxy {
  const _$CampaignResponseCWProxyImpl(this._value);

  final CampaignResponse _value;

  @override
  CampaignResponse id(String? id) => call(id: id);

  @override
  CampaignResponse name(String? name) => call(name: name);

  @override
  CampaignResponse description(String? description) =>
      call(description: description);

  @override
  CampaignResponse startDate(DateTime? startDate) => call(startDate: startDate);

  @override
  CampaignResponse endDate(DateTime? endDate) => call(endDate: endDate);

  @override
  CampaignResponse type(CampaignType? type) => call(type: type);

  @override
  CampaignResponse status(CampaignStatus? status) => call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CampaignResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return CampaignResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
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
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as CampaignStatus?,
    );
  }
}

extension $CampaignResponseCopyWith on CampaignResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCampaignResponse.copyWith(...)` or `instanceOfCampaignResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CampaignResponseCWProxy get copyWith => _$CampaignResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignResponse _$CampaignResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CampaignResponse', json, ($checkedConvert) {
      final val = CampaignResponse(
        id: $checkedConvert('id', (v) => v as String?),
        name: $checkedConvert('name', (v) => v as String?),
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
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$CampaignStatusEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CampaignResponseToJson(CampaignResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'description': ?instance.description,
      'startDate': ?instance.startDate?.toIso8601String(),
      'endDate': ?instance.endDate?.toIso8601String(),
      'type': ?_$CampaignTypeEnumMap[instance.type],
      'status': ?_$CampaignStatusEnumMap[instance.status],
    };

const _$CampaignTypeEnumMap = {
  CampaignType.flashSale: 'FlashSale',
  CampaignType.clearance: 'Clearance',
};

const _$CampaignStatusEnumMap = {
  CampaignStatus.upcoming: 'Upcoming',
  CampaignStatus.active: 'Active',
  CampaignStatus.paused: 'Paused',
  CampaignStatus.completed: 'Completed',
  CampaignStatus.cancelled: 'Cancelled',
};
