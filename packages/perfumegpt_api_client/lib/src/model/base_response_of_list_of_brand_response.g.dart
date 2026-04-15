// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_brand_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfBrandResponseCWProxy {
  BaseResponseOfListOfBrandResponse payload(List<BrandResponse>? payload);

  BaseResponseOfListOfBrandResponse success(bool? success);

  BaseResponseOfListOfBrandResponse message(String? message);

  BaseResponseOfListOfBrandResponse errors(List<String>? errors);

  BaseResponseOfListOfBrandResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBrandResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBrandResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBrandResponse call({
    List<BrandResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfBrandResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfBrandResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfBrandResponseCWProxyImpl
    implements _$BaseResponseOfListOfBrandResponseCWProxy {
  const _$BaseResponseOfListOfBrandResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfBrandResponse _value;

  @override
  BaseResponseOfListOfBrandResponse payload(List<BrandResponse>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfBrandResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfBrandResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfBrandResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfBrandResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBrandResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBrandResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBrandResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfBrandResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<BrandResponse>?,
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

extension $BaseResponseOfListOfBrandResponseCopyWith
    on BaseResponseOfListOfBrandResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfBrandResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfBrandResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfBrandResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfBrandResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfBrandResponse _$BaseResponseOfListOfBrandResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfBrandResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfBrandResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => BrandResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfBrandResponseToJson(
  BaseResponseOfListOfBrandResponse instance,
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
