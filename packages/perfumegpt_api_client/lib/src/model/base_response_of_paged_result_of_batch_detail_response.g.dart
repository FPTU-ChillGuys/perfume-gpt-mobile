// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_batch_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfBatchDetailResponseCWProxy {
  BaseResponseOfPagedResultOfBatchDetailResponse payload(
    PagedResultOfBatchDetailResponse? payload,
  );

  BaseResponseOfPagedResultOfBatchDetailResponse success(bool? success);

  BaseResponseOfPagedResultOfBatchDetailResponse message(String? message);

  BaseResponseOfPagedResultOfBatchDetailResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfBatchDetailResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfBatchDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfBatchDetailResponse call({
    PagedResultOfBatchDetailResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfBatchDetailResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfBatchDetailResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfBatchDetailResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfBatchDetailResponseCWProxy {
  const _$BaseResponseOfPagedResultOfBatchDetailResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfBatchDetailResponse _value;

  @override
  BaseResponseOfPagedResultOfBatchDetailResponse payload(
    PagedResultOfBatchDetailResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfBatchDetailResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfBatchDetailResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfBatchDetailResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfBatchDetailResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfBatchDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfBatchDetailResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfBatchDetailResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfBatchDetailResponse?,
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

extension $BaseResponseOfPagedResultOfBatchDetailResponseCopyWith
    on BaseResponseOfPagedResultOfBatchDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfBatchDetailResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfBatchDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfBatchDetailResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfBatchDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfBatchDetailResponse
_$BaseResponseOfPagedResultOfBatchDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfBatchDetailResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfBatchDetailResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfBatchDetailResponse.fromJson(
              v as Map<String, dynamic>,
            ),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfBatchDetailResponseToJson(
  BaseResponseOfPagedResultOfBatchDetailResponse instance,
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
