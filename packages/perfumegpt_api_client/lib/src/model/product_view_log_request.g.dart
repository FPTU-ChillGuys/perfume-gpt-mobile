// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_view_log_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductViewLogRequestCWProxy {
  ProductViewLogRequest userId(String? userId);

  ProductViewLogRequest productId(String productId);

  ProductViewLogRequest variantId(String? variantId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductViewLogRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductViewLogRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductViewLogRequest call({
    String? userId,
    String productId,
    String? variantId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductViewLogRequest.copyWith(...)` or call `instanceOfProductViewLogRequest.copyWith.fieldName(value)` for a single field.
class _$ProductViewLogRequestCWProxyImpl
    implements _$ProductViewLogRequestCWProxy {
  const _$ProductViewLogRequestCWProxyImpl(this._value);

  final ProductViewLogRequest _value;

  @override
  ProductViewLogRequest userId(String? userId) => call(userId: userId);

  @override
  ProductViewLogRequest productId(String productId) =>
      call(productId: productId);

  @override
  ProductViewLogRequest variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductViewLogRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductViewLogRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductViewLogRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
  }) {
    return ProductViewLogRequest(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      productId: productId == const $CopyWithPlaceholder() || productId == null
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
    );
  }
}

extension $ProductViewLogRequestCopyWith on ProductViewLogRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductViewLogRequest.copyWith(...)` or `instanceOfProductViewLogRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductViewLogRequestCWProxy get copyWith =>
      _$ProductViewLogRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductViewLogRequest _$ProductViewLogRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductViewLogRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['productId']);
  final val = ProductViewLogRequest(
    userId: $checkedConvert('userId', (v) => v as String?),
    productId: $checkedConvert('productId', (v) => v as String),
    variantId: $checkedConvert('variantId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProductViewLogRequestToJson(
  ProductViewLogRequest instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'productId': instance.productId,
  'variantId': ?instance.variantId,
};
