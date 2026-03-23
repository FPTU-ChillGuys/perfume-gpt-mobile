// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_loyalty_point_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfLoyaltyPointResponseCWProxy {
  BaseResponseOfLoyaltyPointResponse payload(LoyaltyPointResponse? payload);

  BaseResponseOfLoyaltyPointResponse success(bool? success);

  BaseResponseOfLoyaltyPointResponse message(String? message);

  BaseResponseOfLoyaltyPointResponse errors(List<String>? errors);

  BaseResponseOfLoyaltyPointResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfLoyaltyPointResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfLoyaltyPointResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfLoyaltyPointResponse call({
    LoyaltyPointResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfLoyaltyPointResponse.copyWith(...)` or call `instanceOfBaseResponseOfLoyaltyPointResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfLoyaltyPointResponseCWProxyImpl
    implements _$BaseResponseOfLoyaltyPointResponseCWProxy {
  const _$BaseResponseOfLoyaltyPointResponseCWProxyImpl(this._value);

  final BaseResponseOfLoyaltyPointResponse _value;

  @override
  BaseResponseOfLoyaltyPointResponse payload(LoyaltyPointResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfLoyaltyPointResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfLoyaltyPointResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfLoyaltyPointResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfLoyaltyPointResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfLoyaltyPointResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfLoyaltyPointResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfLoyaltyPointResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfLoyaltyPointResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as LoyaltyPointResponse?,
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

extension $BaseResponseOfLoyaltyPointResponseCopyWith
    on BaseResponseOfLoyaltyPointResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfLoyaltyPointResponse.copyWith(...)` or `instanceOfBaseResponseOfLoyaltyPointResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfLoyaltyPointResponseCWProxy get copyWith =>
      _$BaseResponseOfLoyaltyPointResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfLoyaltyPointResponse _$BaseResponseOfLoyaltyPointResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfLoyaltyPointResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfLoyaltyPointResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : LoyaltyPointResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfLoyaltyPointResponseToJson(
  BaseResponseOfLoyaltyPointResponse instance,
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
