// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfOrderResponseCWProxy {
  BaseResponseOfOrderResponse payload(OrderResponse? payload);

  BaseResponseOfOrderResponse success(bool? success);

  BaseResponseOfOrderResponse message(String? message);

  BaseResponseOfOrderResponse errors(List<String>? errors);

  BaseResponseOfOrderResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOrderResponse call({
    OrderResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfOrderResponse.copyWith(...)` or call `instanceOfBaseResponseOfOrderResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfOrderResponseCWProxyImpl
    implements _$BaseResponseOfOrderResponseCWProxy {
  const _$BaseResponseOfOrderResponseCWProxyImpl(this._value);

  final BaseResponseOfOrderResponse _value;

  @override
  BaseResponseOfOrderResponse payload(OrderResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfOrderResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfOrderResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfOrderResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfOrderResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOrderResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfOrderResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as OrderResponse?,
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

extension $BaseResponseOfOrderResponseCopyWith on BaseResponseOfOrderResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfOrderResponse.copyWith(...)` or `instanceOfBaseResponseOfOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfOrderResponseCWProxy get copyWith =>
      _$BaseResponseOfOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfOrderResponse _$BaseResponseOfOrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfOrderResponse', json, ($checkedConvert) {
  final val = BaseResponseOfOrderResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : OrderResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfOrderResponseToJson(
  BaseResponseOfOrderResponse instance,
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
