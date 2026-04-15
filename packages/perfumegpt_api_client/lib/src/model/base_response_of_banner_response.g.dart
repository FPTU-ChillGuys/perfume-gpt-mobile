// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_banner_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBannerResponseCWProxy {
  BaseResponseOfBannerResponse payload(BannerResponse? payload);

  BaseResponseOfBannerResponse success(bool? success);

  BaseResponseOfBannerResponse message(String? message);

  BaseResponseOfBannerResponse errors(List<String>? errors);

  BaseResponseOfBannerResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBannerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBannerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBannerResponse call({
    BannerResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfBannerResponse.copyWith(...)` or call `instanceOfBaseResponseOfBannerResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfBannerResponseCWProxyImpl
    implements _$BaseResponseOfBannerResponseCWProxy {
  const _$BaseResponseOfBannerResponseCWProxyImpl(this._value);

  final BaseResponseOfBannerResponse _value;

  @override
  BaseResponseOfBannerResponse payload(BannerResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfBannerResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfBannerResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfBannerResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfBannerResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBannerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBannerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBannerResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBannerResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BannerResponse?,
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

extension $BaseResponseOfBannerResponseCopyWith
    on BaseResponseOfBannerResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfBannerResponse.copyWith(...)` or `instanceOfBaseResponseOfBannerResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBannerResponseCWProxy get copyWith =>
      _$BaseResponseOfBannerResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBannerResponse _$BaseResponseOfBannerResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfBannerResponse', json, ($checkedConvert) {
  final val = BaseResponseOfBannerResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : BannerResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfBannerResponseToJson(
  BaseResponseOfBannerResponse instance,
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
