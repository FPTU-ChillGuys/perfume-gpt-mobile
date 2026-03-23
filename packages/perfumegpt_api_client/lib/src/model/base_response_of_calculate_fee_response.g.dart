// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_calculate_fee_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCalculateFeeResponseCWProxy {
  BaseResponseOfCalculateFeeResponse payload(CalculateFeeResponse? payload);

  BaseResponseOfCalculateFeeResponse success(bool? success);

  BaseResponseOfCalculateFeeResponse message(String? message);

  BaseResponseOfCalculateFeeResponse errors(List<String>? errors);

  BaseResponseOfCalculateFeeResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCalculateFeeResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCalculateFeeResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCalculateFeeResponse call({
    CalculateFeeResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCalculateFeeResponse.copyWith(...)` or call `instanceOfBaseResponseOfCalculateFeeResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCalculateFeeResponseCWProxyImpl
    implements _$BaseResponseOfCalculateFeeResponseCWProxy {
  const _$BaseResponseOfCalculateFeeResponseCWProxyImpl(this._value);

  final BaseResponseOfCalculateFeeResponse _value;

  @override
  BaseResponseOfCalculateFeeResponse payload(CalculateFeeResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfCalculateFeeResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCalculateFeeResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCalculateFeeResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCalculateFeeResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCalculateFeeResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCalculateFeeResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCalculateFeeResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCalculateFeeResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CalculateFeeResponse?,
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

extension $BaseResponseOfCalculateFeeResponseCopyWith
    on BaseResponseOfCalculateFeeResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCalculateFeeResponse.copyWith(...)` or `instanceOfBaseResponseOfCalculateFeeResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCalculateFeeResponseCWProxy get copyWith =>
      _$BaseResponseOfCalculateFeeResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCalculateFeeResponse _$BaseResponseOfCalculateFeeResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfCalculateFeeResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfCalculateFeeResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : CalculateFeeResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfCalculateFeeResponseToJson(
  BaseResponseOfCalculateFeeResponse instance,
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
