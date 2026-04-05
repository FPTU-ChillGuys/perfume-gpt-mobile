// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_campaign_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCampaignResponseCWProxy {
  BaseResponseOfCampaignResponse payload(CampaignResponse? payload);

  BaseResponseOfCampaignResponse success(bool? success);

  BaseResponseOfCampaignResponse message(String? message);

  BaseResponseOfCampaignResponse errors(List<String>? errors);

  BaseResponseOfCampaignResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCampaignResponse call({
    CampaignResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCampaignResponse.copyWith(...)` or call `instanceOfBaseResponseOfCampaignResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCampaignResponseCWProxyImpl
    implements _$BaseResponseOfCampaignResponseCWProxy {
  const _$BaseResponseOfCampaignResponseCWProxyImpl(this._value);

  final BaseResponseOfCampaignResponse _value;

  @override
  BaseResponseOfCampaignResponse payload(CampaignResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfCampaignResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCampaignResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCampaignResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCampaignResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCampaignResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCampaignResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CampaignResponse?,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfCampaignResponseCopyWith
    on BaseResponseOfCampaignResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCampaignResponse.copyWith(...)` or `instanceOfBaseResponseOfCampaignResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCampaignResponseCWProxy get copyWith =>
      _$BaseResponseOfCampaignResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCampaignResponse _$BaseResponseOfCampaignResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfCampaignResponse', json, ($checkedConvert) {
  final val = BaseResponseOfCampaignResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : CampaignResponse.fromJson(v as Map<String, dynamic>),
    ),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfCampaignResponseToJson(
  BaseResponseOfCampaignResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
