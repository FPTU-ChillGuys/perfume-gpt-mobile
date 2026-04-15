// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_order_return_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfOrderReturnRequestResponseCWProxy {
  BaseResponseOfOrderReturnRequestResponse payload(
    OrderReturnRequestResponse? payload,
  );

  BaseResponseOfOrderReturnRequestResponse success(bool? success);

  BaseResponseOfOrderReturnRequestResponse message(String? message);

  BaseResponseOfOrderReturnRequestResponse errors(List<String>? errors);

  BaseResponseOfOrderReturnRequestResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOrderReturnRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOrderReturnRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOrderReturnRequestResponse call({
    OrderReturnRequestResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfOrderReturnRequestResponse.copyWith(...)` or call `instanceOfBaseResponseOfOrderReturnRequestResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfOrderReturnRequestResponseCWProxyImpl
    implements _$BaseResponseOfOrderReturnRequestResponseCWProxy {
  const _$BaseResponseOfOrderReturnRequestResponseCWProxyImpl(this._value);

  final BaseResponseOfOrderReturnRequestResponse _value;

  @override
  BaseResponseOfOrderReturnRequestResponse payload(
    OrderReturnRequestResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfOrderReturnRequestResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfOrderReturnRequestResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfOrderReturnRequestResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfOrderReturnRequestResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOrderReturnRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOrderReturnRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOrderReturnRequestResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfOrderReturnRequestResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as OrderReturnRequestResponse?,
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

extension $BaseResponseOfOrderReturnRequestResponseCopyWith
    on BaseResponseOfOrderReturnRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfOrderReturnRequestResponse.copyWith(...)` or `instanceOfBaseResponseOfOrderReturnRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfOrderReturnRequestResponseCWProxy get copyWith =>
      _$BaseResponseOfOrderReturnRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfOrderReturnRequestResponse
_$BaseResponseOfOrderReturnRequestResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfOrderReturnRequestResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfOrderReturnRequestResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : OrderReturnRequestResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfOrderReturnRequestResponseToJson(
  BaseResponseOfOrderReturnRequestResponse instance,
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
