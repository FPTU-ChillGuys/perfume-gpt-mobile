// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_user_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfUserOrderResponseCWProxy {
  BaseResponseOfUserOrderResponse payload(UserOrderResponse? payload);

  BaseResponseOfUserOrderResponse success(bool? success);

  BaseResponseOfUserOrderResponse message(String? message);

  BaseResponseOfUserOrderResponse errors(List<String>? errors);

  BaseResponseOfUserOrderResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfUserOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfUserOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfUserOrderResponse call({
    UserOrderResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfUserOrderResponse.copyWith(...)` or call `instanceOfBaseResponseOfUserOrderResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfUserOrderResponseCWProxyImpl
    implements _$BaseResponseOfUserOrderResponseCWProxy {
  const _$BaseResponseOfUserOrderResponseCWProxyImpl(this._value);

  final BaseResponseOfUserOrderResponse _value;

  @override
  BaseResponseOfUserOrderResponse payload(UserOrderResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfUserOrderResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfUserOrderResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfUserOrderResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfUserOrderResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfUserOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfUserOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfUserOrderResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfUserOrderResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as UserOrderResponse?,
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

extension $BaseResponseOfUserOrderResponseCopyWith
    on BaseResponseOfUserOrderResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfUserOrderResponse.copyWith(...)` or `instanceOfBaseResponseOfUserOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfUserOrderResponseCWProxy get copyWith =>
      _$BaseResponseOfUserOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfUserOrderResponse _$BaseResponseOfUserOrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfUserOrderResponse', json, ($checkedConvert) {
  final val = BaseResponseOfUserOrderResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : UserOrderResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfUserOrderResponseToJson(
  BaseResponseOfUserOrderResponse instance,
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
