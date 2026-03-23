// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_brand_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBrandResponseCWProxy {
  BaseResponseOfBrandResponse payload(BrandResponse? payload);

  BaseResponseOfBrandResponse success(bool? success);

  BaseResponseOfBrandResponse message(String? message);

  BaseResponseOfBrandResponse errors(List<String>? errors);

  BaseResponseOfBrandResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBrandResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBrandResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBrandResponse call({
    BrandResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfBrandResponse.copyWith(...)` or call `instanceOfBaseResponseOfBrandResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfBrandResponseCWProxyImpl
    implements _$BaseResponseOfBrandResponseCWProxy {
  const _$BaseResponseOfBrandResponseCWProxyImpl(this._value);

  final BaseResponseOfBrandResponse _value;

  @override
  BaseResponseOfBrandResponse payload(BrandResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfBrandResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfBrandResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfBrandResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfBrandResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBrandResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBrandResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBrandResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBrandResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BrandResponse?,
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

extension $BaseResponseOfBrandResponseCopyWith on BaseResponseOfBrandResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfBrandResponse.copyWith(...)` or `instanceOfBaseResponseOfBrandResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBrandResponseCWProxy get copyWith =>
      _$BaseResponseOfBrandResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBrandResponse _$BaseResponseOfBrandResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfBrandResponse', json, ($checkedConvert) {
  final val = BaseResponseOfBrandResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : BrandResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfBrandResponseToJson(
  BaseResponseOfBrandResponse instance,
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
