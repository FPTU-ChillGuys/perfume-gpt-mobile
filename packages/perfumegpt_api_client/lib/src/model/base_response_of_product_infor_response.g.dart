// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_product_infor_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfProductInforResponseCWProxy {
  BaseResponseOfProductInforResponse payload(ProductInforResponse? payload);

  BaseResponseOfProductInforResponse success(bool? success);

  BaseResponseOfProductInforResponse message(String? message);

  BaseResponseOfProductInforResponse errors(List<String>? errors);

  BaseResponseOfProductInforResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfProductInforResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfProductInforResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfProductInforResponse call({
    ProductInforResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfProductInforResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfProductInforResponse.copyWith.fieldName(...)`
class _$BaseResponseOfProductInforResponseCWProxyImpl
    implements _$BaseResponseOfProductInforResponseCWProxy {
  const _$BaseResponseOfProductInforResponseCWProxyImpl(this._value);

  final BaseResponseOfProductInforResponse _value;

  @override
  BaseResponseOfProductInforResponse payload(ProductInforResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfProductInforResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfProductInforResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfProductInforResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfProductInforResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfProductInforResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfProductInforResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfProductInforResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfProductInforResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ProductInforResponse?,
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

extension $BaseResponseOfProductInforResponseCopyWith
    on BaseResponseOfProductInforResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfProductInforResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfProductInforResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfProductInforResponseCWProxy get copyWith =>
      _$BaseResponseOfProductInforResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfProductInforResponse _$BaseResponseOfProductInforResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfProductInforResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfProductInforResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ProductInforResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfProductInforResponseToJson(
  BaseResponseOfProductInforResponse instance,
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
