// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_receipt_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfReceiptResponseCWProxy {
  BaseResponseOfReceiptResponse payload(ReceiptResponse? payload);

  BaseResponseOfReceiptResponse success(bool? success);

  BaseResponseOfReceiptResponse message(String? message);

  BaseResponseOfReceiptResponse errors(List<String>? errors);

  BaseResponseOfReceiptResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfReceiptResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfReceiptResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfReceiptResponse call({
    ReceiptResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfReceiptResponse.copyWith(...)` or call `instanceOfBaseResponseOfReceiptResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfReceiptResponseCWProxyImpl
    implements _$BaseResponseOfReceiptResponseCWProxy {
  const _$BaseResponseOfReceiptResponseCWProxyImpl(this._value);

  final BaseResponseOfReceiptResponse _value;

  @override
  BaseResponseOfReceiptResponse payload(ReceiptResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfReceiptResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfReceiptResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfReceiptResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfReceiptResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfReceiptResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfReceiptResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfReceiptResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfReceiptResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ReceiptResponse?,
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

extension $BaseResponseOfReceiptResponseCopyWith
    on BaseResponseOfReceiptResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfReceiptResponse.copyWith(...)` or `instanceOfBaseResponseOfReceiptResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfReceiptResponseCWProxy get copyWith =>
      _$BaseResponseOfReceiptResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfReceiptResponse _$BaseResponseOfReceiptResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfReceiptResponse', json, ($checkedConvert) {
  final val = BaseResponseOfReceiptResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ReceiptResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfReceiptResponseToJson(
  BaseResponseOfReceiptResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
