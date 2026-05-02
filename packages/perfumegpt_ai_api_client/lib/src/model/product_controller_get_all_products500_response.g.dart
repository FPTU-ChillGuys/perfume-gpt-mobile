// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_all_products500_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetAllProducts500ResponseCWProxy {
  ProductControllerGetAllProducts500Response success(bool? success);

  ProductControllerGetAllProducts500Response error(String? error);

  ProductControllerGetAllProducts500Response detail(Object? detail);

  ProductControllerGetAllProducts500Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts500Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts500Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts500Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetAllProducts500Response.copyWith(...)` or call `instanceOfProductControllerGetAllProducts500Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetAllProducts500ResponseCWProxyImpl
    implements _$ProductControllerGetAllProducts500ResponseCWProxy {
  const _$ProductControllerGetAllProducts500ResponseCWProxyImpl(this._value);

  final ProductControllerGetAllProducts500Response _value;

  @override
  ProductControllerGetAllProducts500Response success(bool? success) =>
      call(success: success);

  @override
  ProductControllerGetAllProducts500Response error(String? error) =>
      call(error: error);

  @override
  ProductControllerGetAllProducts500Response detail(Object? detail) =>
      call(detail: detail);

  @override
  ProductControllerGetAllProducts500Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts500Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts500Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts500Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetAllProducts500Response(
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

extension $ProductControllerGetAllProducts500ResponseCopyWith
    on ProductControllerGetAllProducts500Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetAllProducts500Response.copyWith(...)` or `instanceOfProductControllerGetAllProducts500Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetAllProducts500ResponseCWProxy get copyWith =>
      _$ProductControllerGetAllProducts500ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetAllProducts500Response
_$ProductControllerGetAllProducts500ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductControllerGetAllProducts500Response', json, (
  $checkedConvert,
) {
  final val = ProductControllerGetAllProducts500Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    detail: $checkedConvert('detail', (v) => v),
    statusCode: $checkedConvert('statusCode', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$ProductControllerGetAllProducts500ResponseToJson(
  ProductControllerGetAllProducts500Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
