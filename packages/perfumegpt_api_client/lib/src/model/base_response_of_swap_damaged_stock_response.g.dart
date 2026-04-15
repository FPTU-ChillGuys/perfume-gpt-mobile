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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfSwapDamagedStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfSwapDamagedStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfSwapDamagedStockResponse call({
    SwapDamagedStockResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith(...)` or call `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfSwapDamagedStockResponseCWProxyImpl
    implements _$BaseResponseOfSwapDamagedStockResponseCWProxy {
  const _$BaseResponseOfSwapDamagedStockResponseCWProxyImpl(this._value);

  final BaseResponseOfSwapDamagedStockResponse _value;

  @override
  BaseResponseOfSwapDamagedStockResponse payload(
    SwapDamagedStockResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfSwapDamagedStockResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfSwapDamagedStockResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfSwapDamagedStockResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfSwapDamagedStockResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfSwapDamagedStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfSwapDamagedStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith(...)` or `instanceOfBaseResponseOfSwapDamagedStockResponse.copyWith.fieldName(...)`.
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
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
