// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfMediaResponseCWProxy {
  BaseResponseOfListOfMediaResponse payload(List<MediaResponse>? payload);

  BaseResponseOfListOfMediaResponse success(bool? success);

  BaseResponseOfListOfMediaResponse message(String? message);

  BaseResponseOfListOfMediaResponse errors(List<String>? errors);

  BaseResponseOfListOfMediaResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfMediaResponse call({
    List<MediaResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfMediaResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfMediaResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfMediaResponseCWProxyImpl
    implements _$BaseResponseOfListOfMediaResponseCWProxy {
  const _$BaseResponseOfListOfMediaResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfMediaResponse _value;

  @override
  BaseResponseOfListOfMediaResponse payload(List<MediaResponse>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfMediaResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfMediaResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfMediaResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfMediaResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfMediaResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfMediaResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<MediaResponse>?,
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

extension $BaseResponseOfListOfMediaResponseCopyWith
    on BaseResponseOfListOfMediaResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfMediaResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfMediaResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfMediaResponse _$BaseResponseOfListOfMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfMediaResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfMediaResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfMediaResponseToJson(
  BaseResponseOfListOfMediaResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
