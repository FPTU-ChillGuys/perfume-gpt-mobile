// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_banner_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfBannerResponseCWProxy {
  BaseResponseOfPagedResultOfBannerResponse payload(
    PagedResultOfBannerResponse? payload,
  );

  BaseResponseOfPagedResultOfBannerResponse success(bool? success);

  BaseResponseOfPagedResultOfBannerResponse message(String? message);

  BaseResponseOfPagedResultOfBannerResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfBannerResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfBannerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfBannerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfBannerResponse call({
    PagedResultOfBannerResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfBannerResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfBannerResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfBannerResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfBannerResponseCWProxy {
  const _$BaseResponseOfPagedResultOfBannerResponseCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfBannerResponse _value;

  @override
  BaseResponseOfPagedResultOfBannerResponse payload(
    PagedResultOfBannerResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfBannerResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfBannerResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfBannerResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfBannerResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfBannerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfBannerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfBannerResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfBannerResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfBannerResponse?,
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

extension $BaseResponseOfPagedResultOfBannerResponseCopyWith
    on BaseResponseOfPagedResultOfBannerResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfBannerResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfBannerResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfBannerResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfBannerResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfBannerResponse
_$BaseResponseOfPagedResultOfBannerResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfBannerResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfBannerResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfBannerResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfBannerResponseToJson(
  BaseResponseOfPagedResultOfBannerResponse instance,
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
