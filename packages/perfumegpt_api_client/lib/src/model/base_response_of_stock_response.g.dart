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

  BaseResponseOfStockResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfStockResponse call({
    StockResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfStockResponse.copyWith(...)` or call `instanceOfBaseResponseOfStockResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfStockResponseCWProxyImpl
    implements _$BaseResponseOfStockResponseCWProxy {
  const _$BaseResponseOfStockResponseCWProxyImpl(this._value);

  final BaseResponseOfStockResponse _value;

  @override
  BaseResponseOfStockResponse payload(StockResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfStockResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfStockResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfStockResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfStockResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfStockResponseCopyWith on BaseResponseOfStockResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfStockResponse.copyWith(...)` or `instanceOfBaseResponseOfStockResponse.copyWith.fieldName(...)`.
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
    errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
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
  'errorType': ?instance.errorType,
};
