// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_public_product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPublicProductResponseCWProxy {
  BaseResponseOfPublicProductResponse payload(PublicProductResponse? payload);

  BaseResponseOfPublicProductResponse success(bool? success);

  BaseResponseOfPublicProductResponse message(String? message);

  BaseResponseOfPublicProductResponse errors(List<String>? errors);

  BaseResponseOfPublicProductResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPublicProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPublicProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPublicProductResponse call({
    PublicProductResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPublicProductResponse.copyWith(...)` or call `instanceOfBaseResponseOfPublicProductResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPublicProductResponseCWProxyImpl
    implements _$BaseResponseOfPublicProductResponseCWProxy {
  const _$BaseResponseOfPublicProductResponseCWProxyImpl(this._value);

  final BaseResponseOfPublicProductResponse _value;

  @override
  BaseResponseOfPublicProductResponse payload(PublicProductResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfPublicProductResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPublicProductResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPublicProductResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPublicProductResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPublicProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPublicProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPublicProductResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPublicProductResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PublicProductResponse?,
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

extension $BaseResponseOfPublicProductResponseCopyWith
    on BaseResponseOfPublicProductResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPublicProductResponse.copyWith(...)` or `instanceOfBaseResponseOfPublicProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPublicProductResponseCWProxy get copyWith =>
      _$BaseResponseOfPublicProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPublicProductResponse
_$BaseResponseOfPublicProductResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfPublicProductResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfPublicProductResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : PublicProductResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPublicProductResponseToJson(
  BaseResponseOfPublicProductResponse instance,
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
