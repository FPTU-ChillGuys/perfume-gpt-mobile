// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfProductResponseCWProxy {
  BaseResponseOfProductResponse payload(ProductResponse? payload);

  BaseResponseOfProductResponse success(bool? success);

  BaseResponseOfProductResponse message(String? message);

  BaseResponseOfProductResponse errors(List<String>? errors);

  BaseResponseOfProductResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductResponse call({
    ProductResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfProductResponse.copyWith(...)` or call `instanceOfBaseResponseOfProductResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfProductResponseCWProxyImpl
    implements _$BaseResponseOfProductResponseCWProxy {
  const _$BaseResponseOfProductResponseCWProxyImpl(this._value);

  final BaseResponseOfProductResponse _value;

  @override
  BaseResponseOfProductResponse payload(ProductResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfProductResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfProductResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfProductResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfProductResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfProductResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ProductResponse?,
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

extension $BaseResponseOfProductResponseCopyWith
    on BaseResponseOfProductResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfProductResponse.copyWith(...)` or `instanceOfBaseResponseOfProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfProductResponseCWProxy get copyWith =>
      _$BaseResponseOfProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfProductResponse _$BaseResponseOfProductResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfProductResponse', json, ($checkedConvert) {
  final val = BaseResponseOfProductResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ProductResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfProductResponseToJson(
  BaseResponseOfProductResponse instance,
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
