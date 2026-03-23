// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_get_cart_total_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfGetCartTotalResponseCWProxy {
  BaseResponseOfGetCartTotalResponse payload(GetCartTotalResponse? payload);

  BaseResponseOfGetCartTotalResponse success(bool? success);

  BaseResponseOfGetCartTotalResponse message(String? message);

  BaseResponseOfGetCartTotalResponse errors(List<String>? errors);

  BaseResponseOfGetCartTotalResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfGetCartTotalResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfGetCartTotalResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfGetCartTotalResponse call({
    GetCartTotalResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfGetCartTotalResponse.copyWith(...)` or call `instanceOfBaseResponseOfGetCartTotalResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfGetCartTotalResponseCWProxyImpl
    implements _$BaseResponseOfGetCartTotalResponseCWProxy {
  const _$BaseResponseOfGetCartTotalResponseCWProxyImpl(this._value);

  final BaseResponseOfGetCartTotalResponse _value;

  @override
  BaseResponseOfGetCartTotalResponse payload(GetCartTotalResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfGetCartTotalResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfGetCartTotalResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfGetCartTotalResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfGetCartTotalResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfGetCartTotalResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfGetCartTotalResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfGetCartTotalResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfGetCartTotalResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as GetCartTotalResponse?,
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

extension $BaseResponseOfGetCartTotalResponseCopyWith
    on BaseResponseOfGetCartTotalResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfGetCartTotalResponse.copyWith(...)` or `instanceOfBaseResponseOfGetCartTotalResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfGetCartTotalResponseCWProxy get copyWith =>
      _$BaseResponseOfGetCartTotalResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfGetCartTotalResponse _$BaseResponseOfGetCartTotalResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfGetCartTotalResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfGetCartTotalResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : GetCartTotalResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfGetCartTotalResponseToJson(
  BaseResponseOfGetCartTotalResponse instance,
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
