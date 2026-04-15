// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_campaign_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfCampaignResponseCWProxy {
  BaseResponseOfListOfCampaignResponse payload(List<CampaignResponse>? payload);

  BaseResponseOfListOfCampaignResponse success(bool? success);

  BaseResponseOfListOfCampaignResponse message(String? message);

  BaseResponseOfListOfCampaignResponse errors(List<String>? errors);

  BaseResponseOfListOfCampaignResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCampaignResponse call({
    List<CampaignResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfCampaignResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfCampaignResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfCampaignResponseCWProxyImpl
    implements _$BaseResponseOfListOfCampaignResponseCWProxy {
  const _$BaseResponseOfListOfCampaignResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfCampaignResponse _value;

  @override
  BaseResponseOfListOfCampaignResponse payload(
    List<CampaignResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfCampaignResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfCampaignResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfCampaignResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfCampaignResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCampaignResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfCampaignResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<CampaignResponse>?,
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
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfListOfCampaignResponseCopyWith
    on BaseResponseOfListOfCampaignResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfCampaignResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfCampaignResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfCampaignResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfCampaignResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfCampaignResponse
_$BaseResponseOfListOfCampaignResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfCampaignResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfCampaignResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => CampaignResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        success: $checkedConvert('success', (v) => v as bool?),
        message: $checkedConvert('message', (v) => v as String?),
        errors: $checkedConvert(
          'errors',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        errorType: $checkedConvert(
          'errorType',
          (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseOfListOfCampaignResponseToJson(
  BaseResponseOfListOfCampaignResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
