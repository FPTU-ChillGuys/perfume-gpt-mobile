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

  BaseResponseOfProductInforResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductInforResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductInforResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfProductInforResponse call({
    ProductInforResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfProductInforResponse.copyWith(...)` or call `instanceOfBaseResponseOfProductInforResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfProductInforResponseCWProxyImpl
    implements _$BaseResponseOfProductInforResponseCWProxy {
  const _$BaseResponseOfProductInforResponseCWProxyImpl(this._value);

  final BaseResponseOfProductInforResponse _value;

  @override
  BaseResponseOfProductInforResponse payload(ProductInforResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfProductInforResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfProductInforResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfProductInforResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfProductInforResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfProductInforResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfProductInforResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfProductInforResponseCopyWith
    on BaseResponseOfProductInforResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfProductInforResponse.copyWith(...)` or `instanceOfBaseResponseOfProductInforResponse.copyWith.fieldName(...)`.
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
    errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
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
  'errorType': ?instance.errorType,
};
