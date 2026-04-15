// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_product_variant_for_pos_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfProductVariantForPosResponseCWProxy {
  BaseResponseOfProductVariantForPosResponse payload(
    ProductVariantForPosResponse? payload,
  );

  BaseResponseOfProductVariantForPosResponse success(bool? success);

  BaseResponseOfProductVariantForPosResponse message(String? message);

  BaseResponseOfProductVariantForPosResponse errors(List<String>? errors);

  BaseResponseOfProductVariantForPosResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductVariantForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductVariantForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductVariantForPosResponse call({
    ProductVariantForPosResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfProductVariantForPosResponse.copyWith(...)` or call `instanceOfBaseResponseOfProductVariantForPosResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfProductVariantForPosResponseCWProxyImpl
    implements _$BaseResponseOfProductVariantForPosResponseCWProxy {
  const _$BaseResponseOfProductVariantForPosResponseCWProxyImpl(this._value);

  final BaseResponseOfProductVariantForPosResponse _value;

  @override
  BaseResponseOfProductVariantForPosResponse payload(
    ProductVariantForPosResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfProductVariantForPosResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfProductVariantForPosResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfProductVariantForPosResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfProductVariantForPosResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductVariantForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductVariantForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductVariantForPosResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfProductVariantForPosResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ProductVariantForPosResponse?,
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

extension $BaseResponseOfProductVariantForPosResponseCopyWith
    on BaseResponseOfProductVariantForPosResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfProductVariantForPosResponse.copyWith(...)` or `instanceOfBaseResponseOfProductVariantForPosResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfProductVariantForPosResponseCWProxy get copyWith =>
      _$BaseResponseOfProductVariantForPosResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfProductVariantForPosResponse
_$BaseResponseOfProductVariantForPosResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfProductVariantForPosResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfProductVariantForPosResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ProductVariantForPosResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfProductVariantForPosResponseToJson(
  BaseResponseOfProductVariantForPosResponse instance,
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
