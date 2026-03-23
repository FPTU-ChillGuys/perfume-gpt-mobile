// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_batch_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfBatchDetailResponseCWProxy {
  BaseResponseOfListOfBatchDetailResponse payload(
    List<BatchDetailResponse>? payload,
  );

  BaseResponseOfListOfBatchDetailResponse success(bool? success);

  BaseResponseOfListOfBatchDetailResponse message(String? message);

  BaseResponseOfListOfBatchDetailResponse errors(List<String>? errors);

  BaseResponseOfListOfBatchDetailResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBatchDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBatchDetailResponse call({
    List<BatchDetailResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfBatchDetailResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfBatchDetailResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfBatchDetailResponseCWProxyImpl
    implements _$BaseResponseOfListOfBatchDetailResponseCWProxy {
  const _$BaseResponseOfListOfBatchDetailResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfBatchDetailResponse _value;

  @override
  BaseResponseOfListOfBatchDetailResponse payload(
    List<BatchDetailResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfBatchDetailResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfBatchDetailResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfBatchDetailResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfBatchDetailResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBatchDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBatchDetailResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfBatchDetailResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<BatchDetailResponse>?,
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

extension $BaseResponseOfListOfBatchDetailResponseCopyWith
    on BaseResponseOfListOfBatchDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfBatchDetailResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfBatchDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfBatchDetailResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfBatchDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfBatchDetailResponse
_$BaseResponseOfListOfBatchDetailResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfBatchDetailResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfBatchDetailResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => BatchDetailResponse.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfBatchDetailResponseToJson(
  BaseResponseOfListOfBatchDetailResponse instance,
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
