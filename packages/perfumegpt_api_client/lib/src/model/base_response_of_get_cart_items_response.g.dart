// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_get_cart_items_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfGetCartItemsResponseCWProxy {
  BaseResponseOfGetCartItemsResponse payload(GetCartItemsResponse? payload);

  BaseResponseOfGetCartItemsResponse success(bool? success);

  BaseResponseOfGetCartItemsResponse message(String? message);

  BaseResponseOfGetCartItemsResponse errors(List<String>? errors);

  BaseResponseOfGetCartItemsResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfGetCartItemsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfGetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfGetCartItemsResponse call({
    GetCartItemsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfGetCartItemsResponse.copyWith(...)` or call `instanceOfBaseResponseOfGetCartItemsResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfGetCartItemsResponseCWProxyImpl
    implements _$BaseResponseOfGetCartItemsResponseCWProxy {
  const _$BaseResponseOfGetCartItemsResponseCWProxyImpl(this._value);

  final BaseResponseOfGetCartItemsResponse _value;

  @override
  BaseResponseOfGetCartItemsResponse payload(GetCartItemsResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfGetCartItemsResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfGetCartItemsResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfGetCartItemsResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfGetCartItemsResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfGetCartItemsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfGetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfGetCartItemsResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfGetCartItemsResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as GetCartItemsResponse?,
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

extension $BaseResponseOfGetCartItemsResponseCopyWith
    on BaseResponseOfGetCartItemsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfGetCartItemsResponse.copyWith(...)` or `instanceOfBaseResponseOfGetCartItemsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfGetCartItemsResponseCWProxy get copyWith =>
      _$BaseResponseOfGetCartItemsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfGetCartItemsResponse _$BaseResponseOfGetCartItemsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfGetCartItemsResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfGetCartItemsResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : GetCartItemsResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfGetCartItemsResponseToJson(
  BaseResponseOfGetCartItemsResponse instance,
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
