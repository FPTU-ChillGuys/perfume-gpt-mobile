// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_swap_damaged_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfSwapDamagedStockResponseCWProxy {
  BaseResponseOfSwapDamagedStockResponse payload(
    SwapDamagedStockResponse? payload,
  );

  BaseResponseOfSwapDamagedStockResponse success(bool? success);

  BaseResponseOfSwapDamagedStockResponse message(String? message);

  BaseResponseOfSwapDamagedStockResponse errors(List<String>? errors);

  BaseResponseOfSwapDamagedStockResponse errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfSwapDamagedStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfSwapDamagedStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfSwapDamagedStockResponse call({
    SwapDamagedStockResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith.fieldName(...)`
class _$BaseResponseOfSwapDamagedStockResponseCWProxyImpl
    implements _$BaseResponseOfSwapDamagedStockResponseCWProxy {
  const _$BaseResponseOfSwapDamagedStockResponseCWProxyImpl(this._value);

  final BaseResponseOfSwapDamagedStockResponse _value;

  @override
  BaseResponseOfSwapDamagedStockResponse payload(
    SwapDamagedStockResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfSwapDamagedStockResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfSwapDamagedStockResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfSwapDamagedStockResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfSwapDamagedStockResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfSwapDamagedStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfSwapDamagedStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfSwapDamagedStockResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfSwapDamagedStockResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as SwapDamagedStockResponse?,
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

extension $BaseResponseOfSwapDamagedStockResponseCopyWith
    on BaseResponseOfSwapDamagedStockResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfSwapDamagedStockResponseCWProxy get copyWith =>
      _$BaseResponseOfSwapDamagedStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfSwapDamagedStockResponse
_$BaseResponseOfSwapDamagedStockResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfSwapDamagedStockResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfSwapDamagedStockResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : SwapDamagedStockResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfSwapDamagedStockResponseToJson(
  BaseResponseOfSwapDamagedStockResponse instance,
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
