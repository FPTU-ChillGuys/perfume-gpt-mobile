// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_all_products400_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetAllProducts400ResponseCWProxy {
  ProductControllerGetAllProducts400Response success(bool? success);

  ProductControllerGetAllProducts400Response error(String? error);

  ProductControllerGetAllProducts400Response detail(Object? detail);

  ProductControllerGetAllProducts400Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts400Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts400Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts400Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetAllProducts400Response.copyWith(...)` or call `instanceOfProductControllerGetAllProducts400Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetAllProducts400ResponseCWProxyImpl
    implements _$ProductControllerGetAllProducts400ResponseCWProxy {
  const _$ProductControllerGetAllProducts400ResponseCWProxyImpl(this._value);

  final ProductControllerGetAllProducts400Response _value;

  @override
  ProductControllerGetAllProducts400Response success(bool? success) =>
      call(success: success);

  @override
  ProductControllerGetAllProducts400Response error(String? error) =>
      call(error: error);

  @override
  ProductControllerGetAllProducts400Response detail(Object? detail) =>
      call(detail: detail);

  @override
  ProductControllerGetAllProducts400Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts400Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts400Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts400Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetAllProducts400Response(
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

extension $ProductControllerGetAllProducts400ResponseCopyWith
    on ProductControllerGetAllProducts400Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetAllProducts400Response.copyWith(...)` or `instanceOfProductControllerGetAllProducts400Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetAllProducts400ResponseCWProxy get copyWith =>
      _$ProductControllerGetAllProducts400ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetAllProducts400Response
_$ProductControllerGetAllProducts400ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductControllerGetAllProducts400Response', json, (
  $checkedConvert,
) {
  final val = ProductControllerGetAllProducts400Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    detail: $checkedConvert('detail', (v) => v),
    statusCode: $checkedConvert('statusCode', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$ProductControllerGetAllProducts400ResponseToJson(
  ProductControllerGetAllProducts400Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
