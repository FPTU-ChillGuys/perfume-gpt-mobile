// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_products_by_semantic_search200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetProductsBySemanticSearch200ResponseCWProxy {
  ProductControllerGetProductsBySemanticSearch200Response success(bool success);

  ProductControllerGetProductsBySemanticSearch200Response error(Object? error);

  ProductControllerGetProductsBySemanticSearch200Response payload(
    ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload?
    payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsBySemanticSearch200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsBySemanticSearch200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsBySemanticSearch200Response call({
    bool success,
    Object? error,
    ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload?
    payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetProductsBySemanticSearch200Response.copyWith(...)` or call `instanceOfProductControllerGetProductsBySemanticSearch200Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetProductsBySemanticSearch200ResponseCWProxyImpl
    implements
        _$ProductControllerGetProductsBySemanticSearch200ResponseCWProxy {
  const _$ProductControllerGetProductsBySemanticSearch200ResponseCWProxyImpl(
    this._value,
  );

  final ProductControllerGetProductsBySemanticSearch200Response _value;

  @override
  ProductControllerGetProductsBySemanticSearch200Response success(
    bool success,
  ) => call(success: success);

  @override
  ProductControllerGetProductsBySemanticSearch200Response error(
    Object? error,
  ) => call(error: error);

  @override
  ProductControllerGetProductsBySemanticSearch200Response payload(
    ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload?
    payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsBySemanticSearch200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsBySemanticSearch200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsBySemanticSearch200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetProductsBySemanticSearch200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload
                as ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload?,
    );
  }
}

extension $ProductControllerGetProductsBySemanticSearch200ResponseCopyWith
    on ProductControllerGetProductsBySemanticSearch200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetProductsBySemanticSearch200Response.copyWith(...)` or `instanceOfProductControllerGetProductsBySemanticSearch200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetProductsBySemanticSearch200ResponseCWProxy
  get copyWith =>
      _$ProductControllerGetProductsBySemanticSearch200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetProductsBySemanticSearch200Response
_$ProductControllerGetProductsBySemanticSearch200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetProductsBySemanticSearch200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = ProductControllerGetProductsBySemanticSearch200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ProductControllerGetProductsBySemanticSearch200ResponseToJson(
  ProductControllerGetProductsBySemanticSearch200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
