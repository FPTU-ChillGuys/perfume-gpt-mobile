// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_all_products404_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetAllProducts404ResponseCWProxy {
  ProductControllerGetAllProducts404Response success(bool? success);

  ProductControllerGetAllProducts404Response error(String? error);

  ProductControllerGetAllProducts404Response detail(Object? detail);

  ProductControllerGetAllProducts404Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts404Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts404Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts404Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetAllProducts404Response.copyWith(...)` or call `instanceOfProductControllerGetAllProducts404Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetAllProducts404ResponseCWProxyImpl
    implements _$ProductControllerGetAllProducts404ResponseCWProxy {
  const _$ProductControllerGetAllProducts404ResponseCWProxyImpl(this._value);

  final ProductControllerGetAllProducts404Response _value;

  @override
  ProductControllerGetAllProducts404Response success(bool? success) =>
      call(success: success);

  @override
  ProductControllerGetAllProducts404Response error(String? error) =>
      call(error: error);

  @override
  ProductControllerGetAllProducts404Response detail(Object? detail) =>
      call(detail: detail);

  @override
  ProductControllerGetAllProducts404Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts404Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts404Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts404Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetAllProducts404Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      detail: detail == const $CopyWithPlaceholder()
          ? _value.detail
          // ignore: cast_nullable_to_non_nullable
          : detail as Object?,
      statusCode: statusCode == const $CopyWithPlaceholder()
          ? _value.statusCode
          // ignore: cast_nullable_to_non_nullable
          : statusCode as num?,
    );
  }
}

extension $ProductControllerGetAllProducts404ResponseCopyWith
    on ProductControllerGetAllProducts404Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetAllProducts404Response.copyWith(...)` or `instanceOfProductControllerGetAllProducts404Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetAllProducts404ResponseCWProxy get copyWith =>
      _$ProductControllerGetAllProducts404ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetAllProducts404Response
_$ProductControllerGetAllProducts404ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductControllerGetAllProducts404Response', json, (
  $checkedConvert,
) {
  final val = ProductControllerGetAllProducts404Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    detail: $checkedConvert('detail', (v) => v),
    statusCode: $checkedConvert('statusCode', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$ProductControllerGetAllProducts404ResponseToJson(
  ProductControllerGetAllProducts404Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
