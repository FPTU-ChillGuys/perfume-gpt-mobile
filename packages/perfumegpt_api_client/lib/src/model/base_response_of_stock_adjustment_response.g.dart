// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_stock_adjustment_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfStockAdjustmentResponseCWProxy {
  BaseResponseOfStockAdjustmentResponse payload(
    StockAdjustmentResponse? payload,
  );

  BaseResponseOfStockAdjustmentResponse success(bool? success);

  BaseResponseOfStockAdjustmentResponse message(String? message);

  BaseResponseOfStockAdjustmentResponse errors(List<String>? errors);

  BaseResponseOfStockAdjustmentResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfStockAdjustmentResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfStockAdjustmentResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfStockAdjustmentResponse call({
    StockAdjustmentResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfStockAdjustmentResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfStockAdjustmentResponse.copyWith.fieldName(...)`
class _$BaseResponseOfStockAdjustmentResponseCWProxyImpl
    implements _$BaseResponseOfStockAdjustmentResponseCWProxy {
  const _$BaseResponseOfStockAdjustmentResponseCWProxyImpl(this._value);

  final BaseResponseOfStockAdjustmentResponse _value;

  @override
  BaseResponseOfStockAdjustmentResponse payload(
    StockAdjustmentResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfStockAdjustmentResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfStockAdjustmentResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfStockAdjustmentResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfStockAdjustmentResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfStockAdjustmentResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfStockAdjustmentResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfStockAdjustmentResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfStockAdjustmentResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as StockAdjustmentResponse?,
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

extension $BaseResponseOfStockAdjustmentResponseCopyWith
    on BaseResponseOfStockAdjustmentResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfStockAdjustmentResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfStockAdjustmentResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfStockAdjustmentResponseCWProxy get copyWith =>
      _$BaseResponseOfStockAdjustmentResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfStockAdjustmentResponse
_$BaseResponseOfStockAdjustmentResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfStockAdjustmentResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfStockAdjustmentResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : StockAdjustmentResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfStockAdjustmentResponseToJson(
  BaseResponseOfStockAdjustmentResponse instance,
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
