// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_campaign_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfCampaignResponseCWProxy {
  BaseResponseOfPagedResultOfCampaignResponse payload(
    PagedResultOfCampaignResponse? payload,
  );

  BaseResponseOfPagedResultOfCampaignResponse success(bool? success);

  BaseResponseOfPagedResultOfCampaignResponse message(String? message);

  BaseResponseOfPagedResultOfCampaignResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfCampaignResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfCampaignResponse call({
    PagedResultOfCampaignResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfCampaignResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfCampaignResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfCampaignResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfCampaignResponseCWProxy {
  const _$BaseResponseOfPagedResultOfCampaignResponseCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfCampaignResponse _value;

  @override
  BaseResponseOfPagedResultOfCampaignResponse payload(
    PagedResultOfCampaignResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfCampaignResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfCampaignResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfCampaignResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfCampaignResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfCampaignResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfCampaignResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfCampaignResponse?,
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

extension $BaseResponseOfPagedResultOfCampaignResponseCopyWith
    on BaseResponseOfPagedResultOfCampaignResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfCampaignResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfCampaignResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfCampaignResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfCampaignResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfCampaignResponse
_$BaseResponseOfPagedResultOfCampaignResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfCampaignResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfCampaignResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfCampaignResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfCampaignResponseToJson(
  BaseResponseOfPagedResultOfCampaignResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
