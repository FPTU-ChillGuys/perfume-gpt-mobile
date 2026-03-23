// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_batch_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBatchDetailResponseCWProxy {
  BaseResponseOfBatchDetailResponse payload(BatchDetailResponse? payload);

  BaseResponseOfBatchDetailResponse success(bool? success);

  BaseResponseOfBatchDetailResponse message(String? message);

  BaseResponseOfBatchDetailResponse errors(List<String>? errors);

  BaseResponseOfBatchDetailResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBatchDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBatchDetailResponse call({
    BatchDetailResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfBatchDetailResponse.copyWith(...)` or call `instanceOfBaseResponseOfBatchDetailResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfBatchDetailResponseCWProxyImpl
    implements _$BaseResponseOfBatchDetailResponseCWProxy {
  const _$BaseResponseOfBatchDetailResponseCWProxyImpl(this._value);

  final BaseResponseOfBatchDetailResponse _value;

  @override
  BaseResponseOfBatchDetailResponse payload(BatchDetailResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfBatchDetailResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfBatchDetailResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfBatchDetailResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfBatchDetailResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBatchDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBatchDetailResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBatchDetailResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BatchDetailResponse?,
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

extension $BaseResponseOfBatchDetailResponseCopyWith
    on BaseResponseOfBatchDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfBatchDetailResponse.copyWith(...)` or `instanceOfBaseResponseOfBatchDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBatchDetailResponseCWProxy get copyWith =>
      _$BaseResponseOfBatchDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBatchDetailResponse _$BaseResponseOfBatchDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfBatchDetailResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfBatchDetailResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : BatchDetailResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfBatchDetailResponseToJson(
  BaseResponseOfBatchDetailResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
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
