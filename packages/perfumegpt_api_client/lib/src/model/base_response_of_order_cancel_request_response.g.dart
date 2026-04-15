// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_order_cancel_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfOrderCancelRequestResponseCWProxy {
  BaseResponseOfOrderCancelRequestResponse payload(
    OrderCancelRequestResponse? payload,
  );

  BaseResponseOfOrderCancelRequestResponse success(bool? success);

  BaseResponseOfOrderCancelRequestResponse message(String? message);

  BaseResponseOfOrderCancelRequestResponse errors(List<String>? errors);

  BaseResponseOfOrderCancelRequestResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOrderCancelRequestResponse call({
    OrderCancelRequestResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfOrderCancelRequestResponse.copyWith(...)` or call `instanceOfBaseResponseOfOrderCancelRequestResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfOrderCancelRequestResponseCWProxyImpl
    implements _$BaseResponseOfOrderCancelRequestResponseCWProxy {
  const _$BaseResponseOfOrderCancelRequestResponseCWProxyImpl(this._value);

  final BaseResponseOfOrderCancelRequestResponse _value;

  @override
  BaseResponseOfOrderCancelRequestResponse payload(
    OrderCancelRequestResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfOrderCancelRequestResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfOrderCancelRequestResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfOrderCancelRequestResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfOrderCancelRequestResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOrderCancelRequestResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfOrderCancelRequestResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as OrderCancelRequestResponse?,
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

extension $BaseResponseOfOrderCancelRequestResponseCopyWith
    on BaseResponseOfOrderCancelRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfOrderCancelRequestResponse.copyWith(...)` or `instanceOfBaseResponseOfOrderCancelRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfOrderCancelRequestResponseCWProxy get copyWith =>
      _$BaseResponseOfOrderCancelRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfOrderCancelRequestResponse
_$BaseResponseOfOrderCancelRequestResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfOrderCancelRequestResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfOrderCancelRequestResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : OrderCancelRequestResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfOrderCancelRequestResponseToJson(
  BaseResponseOfOrderCancelRequestResponse instance,
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
