// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_products_by_hybrid_search200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetProductsByHybridSearch200ResponseCWProxy {
  ProductControllerGetProductsByHybridSearch200Response success(bool? success);

  ProductControllerGetProductsByHybridSearch200Response error(String? error);

  ProductControllerGetProductsByHybridSearch200Response payload(
    HybridSearchResponse? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsByHybridSearch200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsByHybridSearch200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsByHybridSearch200Response call({
    bool? success,
    String? error,
    HybridSearchResponse? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetProductsByHybridSearch200Response.copyWith(...)` or call `instanceOfProductControllerGetProductsByHybridSearch200Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetProductsByHybridSearch200ResponseCWProxyImpl
    implements _$ProductControllerGetProductsByHybridSearch200ResponseCWProxy {
  const _$ProductControllerGetProductsByHybridSearch200ResponseCWProxyImpl(
    this._value,
  );

  final ProductControllerGetProductsByHybridSearch200Response _value;

  @override
  ProductControllerGetProductsByHybridSearch200Response success(
    bool? success,
  ) => call(success: success);

  @override
  ProductControllerGetProductsByHybridSearch200Response error(String? error) =>
      call(error: error);

  @override
  ProductControllerGetProductsByHybridSearch200Response payload(
    HybridSearchResponse? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsByHybridSearch200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsByHybridSearch200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsByHybridSearch200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetProductsByHybridSearch200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as HybridSearchResponse?,
    );
  }
}

extension $ProductControllerGetProductsByHybridSearch200ResponseCopyWith
    on ProductControllerGetProductsByHybridSearch200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetProductsByHybridSearch200Response.copyWith(...)` or `instanceOfProductControllerGetProductsByHybridSearch200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetProductsByHybridSearch200ResponseCWProxy get copyWith =>
      _$ProductControllerGetProductsByHybridSearch200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetProductsByHybridSearch200Response
_$ProductControllerGetProductsByHybridSearch200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetProductsByHybridSearch200Response',
  json,
  ($checkedConvert) {
    final val = ProductControllerGetProductsByHybridSearch200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : HybridSearchResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ProductControllerGetProductsByHybridSearch200ResponseToJson(
  ProductControllerGetProductsByHybridSearch200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
