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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfGetCartItemsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfGetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfGetCartItemsResponse call({
    GetCartItemsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfGetCartItemsResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfGetCartItemsResponse.copyWith.fieldName(...)`
class _$BaseResponseOfGetCartItemsResponseCWProxyImpl
    implements _$BaseResponseOfGetCartItemsResponseCWProxy {
  const _$BaseResponseOfGetCartItemsResponseCWProxyImpl(this._value);

  final BaseResponseOfGetCartItemsResponse _value;

  @override
  BaseResponseOfGetCartItemsResponse payload(GetCartItemsResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfGetCartItemsResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfGetCartItemsResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfGetCartItemsResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfGetCartItemsResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfGetCartItemsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfGetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfGetCartItemsResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfGetCartItemsResponse.copyWith.fieldName(...)`.
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
