// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_product_fast_look_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfProductFastLookResponseCWProxy {
  BaseResponseOfProductFastLookResponse payload(
    ProductFastLookResponse? payload,
  );

  BaseResponseOfProductFastLookResponse success(bool? success);

  BaseResponseOfProductFastLookResponse message(String? message);

  BaseResponseOfProductFastLookResponse errors(List<String>? errors);

  BaseResponseOfProductFastLookResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductFastLookResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductFastLookResponse call({
    ProductFastLookResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfProductFastLookResponse.copyWith(...)` or call `instanceOfBaseResponseOfProductFastLookResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfProductFastLookResponseCWProxyImpl
    implements _$BaseResponseOfProductFastLookResponseCWProxy {
  const _$BaseResponseOfProductFastLookResponseCWProxyImpl(this._value);

  final BaseResponseOfProductFastLookResponse _value;

  @override
  BaseResponseOfProductFastLookResponse payload(
    ProductFastLookResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfProductFastLookResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfProductFastLookResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfProductFastLookResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfProductFastLookResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductFastLookResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductFastLookResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfProductFastLookResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ProductFastLookResponse?,
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

extension $BaseResponseOfProductFastLookResponseCopyWith
    on BaseResponseOfProductFastLookResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfProductFastLookResponse.copyWith(...)` or `instanceOfBaseResponseOfProductFastLookResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfProductFastLookResponseCWProxy get copyWith =>
      _$BaseResponseOfProductFastLookResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfProductFastLookResponse
_$BaseResponseOfProductFastLookResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfProductFastLookResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfProductFastLookResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ProductFastLookResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfProductFastLookResponseToJson(
  BaseResponseOfProductFastLookResponse instance,
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
