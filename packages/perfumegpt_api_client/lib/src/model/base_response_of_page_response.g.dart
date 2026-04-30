// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_page_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPageResponseCWProxy {
  BaseResponseOfPageResponse payload(PageResponse? payload);

  BaseResponseOfPageResponse success(bool? success);

  BaseResponseOfPageResponse message(String? message);

  BaseResponseOfPageResponse errors(List<String>? errors);

  BaseResponseOfPageResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPageResponse call({
    PageResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPageResponse.copyWith(...)` or call `instanceOfBaseResponseOfPageResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPageResponseCWProxyImpl
    implements _$BaseResponseOfPageResponseCWProxy {
  const _$BaseResponseOfPageResponseCWProxyImpl(this._value);

  final BaseResponseOfPageResponse _value;

  @override
  BaseResponseOfPageResponse payload(PageResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfPageResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfPageResponse message(String? message) => call(message: message);

  @override
  BaseResponseOfPageResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPageResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPageResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPageResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PageResponse?,
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

extension $BaseResponseOfPageResponseCopyWith on BaseResponseOfPageResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPageResponse.copyWith(...)` or `instanceOfBaseResponseOfPageResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPageResponseCWProxy get copyWith =>
      _$BaseResponseOfPageResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPageResponse _$BaseResponseOfPageResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPageResponse', json, ($checkedConvert) {
  final val = BaseResponseOfPageResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : PageResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPageResponseToJson(
  BaseResponseOfPageResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
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
