// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_batch_lookup_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfBatchLookupResponseCWProxy {
  BaseResponseOfListOfBatchLookupResponse payload(
    List<BatchLookupResponse>? payload,
  );

  BaseResponseOfListOfBatchLookupResponse success(bool? success);

  BaseResponseOfListOfBatchLookupResponse message(String? message);

  BaseResponseOfListOfBatchLookupResponse errors(List<String>? errors);

  BaseResponseOfListOfBatchLookupResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBatchLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBatchLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBatchLookupResponse call({
    List<BatchLookupResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfBatchLookupResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfBatchLookupResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfBatchLookupResponseCWProxyImpl
    implements _$BaseResponseOfListOfBatchLookupResponseCWProxy {
  const _$BaseResponseOfListOfBatchLookupResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfBatchLookupResponse _value;

  @override
  BaseResponseOfListOfBatchLookupResponse payload(
    List<BatchLookupResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfBatchLookupResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfBatchLookupResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfBatchLookupResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfBatchLookupResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBatchLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBatchLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBatchLookupResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfBatchLookupResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<BatchLookupResponse>?,
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

extension $BaseResponseOfListOfBatchLookupResponseCopyWith
    on BaseResponseOfListOfBatchLookupResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfBatchLookupResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfBatchLookupResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfBatchLookupResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfBatchLookupResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfBatchLookupResponse
_$BaseResponseOfListOfBatchLookupResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfBatchLookupResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfBatchLookupResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => BatchLookupResponse.fromJson(e as Map<String, dynamic>),
              )
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

Map<String, dynamic> _$BaseResponseOfListOfBatchLookupResponseToJson(
  BaseResponseOfListOfBatchLookupResponse instance,
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
