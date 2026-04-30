// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_page_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfPageResponseCWProxy {
  BaseResponseOfPagedResultOfPageResponse payload(
    PagedResultOfPageResponse? payload,
  );

  BaseResponseOfPagedResultOfPageResponse success(bool? success);

  BaseResponseOfPagedResultOfPageResponse message(String? message);

  BaseResponseOfPagedResultOfPageResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfPageResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfPageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfPageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfPageResponse call({
    PagedResultOfPageResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfPageResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfPageResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfPageResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfPageResponseCWProxy {
  const _$BaseResponseOfPagedResultOfPageResponseCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfPageResponse _value;

  @override
  BaseResponseOfPagedResultOfPageResponse payload(
    PagedResultOfPageResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfPageResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfPageResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfPageResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfPageResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfPageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfPageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfPageResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfPageResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfPageResponse?,
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

extension $BaseResponseOfPagedResultOfPageResponseCopyWith
    on BaseResponseOfPagedResultOfPageResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfPageResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfPageResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfPageResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfPageResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfPageResponse
_$BaseResponseOfPagedResultOfPageResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfPagedResultOfPageResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfPagedResultOfPageResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : PagedResultOfPageResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfPageResponseToJson(
  BaseResponseOfPagedResultOfPageResponse instance,
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
