// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCampaignStatusRequestCWProxy {
  UpdateCampaignStatusRequest status(CampaignStatus? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignStatusRequest call({CampaignStatus? status});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCampaignStatusRequest.copyWith(...)` or call `instanceOfUpdateCampaignStatusRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCampaignStatusRequestCWProxyImpl
    implements _$UpdateCampaignStatusRequestCWProxy {
  const _$UpdateCampaignStatusRequestCWProxyImpl(this._value);

  final UpdateCampaignStatusRequest _value;

  @override
  UpdateCampaignStatusRequest status(CampaignStatus? status) =>
      call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignStatusRequest call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return UpdateCampaignStatusRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as CampaignStatus?,
    );
  }
}

extension $UpdateCampaignStatusRequestCopyWith on UpdateCampaignStatusRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCampaignStatusRequest.copyWith(...)` or `instanceOfUpdateCampaignStatusRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCampaignStatusRequestCWProxy get copyWith =>
      _$UpdateCampaignStatusRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCampaignStatusRequest _$UpdateCampaignStatusRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCampaignStatusRequest', json, ($checkedConvert) {
  final val = UpdateCampaignStatusRequest(
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$CampaignStatusEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateCampaignStatusRequestToJson(
  UpdateCampaignStatusRequest instance,
) => <String, dynamic>{'status': ?_$CampaignStatusEnumMap[instance.status]};

const _$CampaignStatusEnumMap = {
  CampaignStatus.upcoming: 'Upcoming',
  CampaignStatus.active: 'Active',
  CampaignStatus.paused: 'Paused',
  CampaignStatus.completed: 'Completed',
  CampaignStatus.cancelled: 'Cancelled',
};
