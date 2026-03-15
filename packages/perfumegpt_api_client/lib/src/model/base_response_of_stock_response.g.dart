// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfStockResponseCWProxy {
  BaseResponseOfStockResponse payload(StockResponse? payload);

  BaseResponseOfStockResponse success(bool? success);

  BaseResponseOfStockResponse message(String? message);

  BaseResponseOfStockResponse errors(List<String>? errors);

  BaseResponseOfStockResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfStockResponse call({
    StockResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfStockResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfStockResponse.copyWith.fieldName(...)`
class _$BaseResponseOfStockResponseCWProxyImpl
    implements _$BaseResponseOfStockResponseCWProxy {
  const _$BaseResponseOfStockResponseCWProxyImpl(this._value);

  final BaseResponseOfStockResponse _value;

  @override
  BaseResponseOfStockResponse payload(StockResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfStockResponse success(bool? success) => this(success: success);

  @override
  BaseResponseOfStockResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfStockResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfStockResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfStockResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfStockResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as StockResponse?,
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

extension $BaseResponseOfStockResponseCopyWith on BaseResponseOfStockResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfStockResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfStockResponseCWProxy get copyWith =>
      _$BaseResponseOfStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfStockResponse _$BaseResponseOfStockResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfStockResponse', json, ($checkedConvert) {
  final val = BaseResponseOfStockResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : StockResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfStockResponseToJson(
  BaseResponseOfStockResponse instance,
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
