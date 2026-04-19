// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_product_with_variants200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetProductWithVariants200ResponseCWProxy {
  ProductControllerGetProductWithVariants200Response success(bool success);

  ProductControllerGetProductWithVariants200Response error(Object? error);

  ProductControllerGetProductWithVariants200Response payload(Object? payload);

  ProductControllerGetProductWithVariants200Response data(
    ProductWithVariantsResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductWithVariants200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductWithVariants200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductWithVariants200Response call({
    bool success,
    Object? error,
    Object? payload,
    ProductWithVariantsResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetProductWithVariants200Response.copyWith(...)` or call `instanceOfProductControllerGetProductWithVariants200Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetProductWithVariants200ResponseCWProxyImpl
    implements _$ProductControllerGetProductWithVariants200ResponseCWProxy {
  const _$ProductControllerGetProductWithVariants200ResponseCWProxyImpl(
    this._value,
  );

  final ProductControllerGetProductWithVariants200Response _value;

  @override
  ProductControllerGetProductWithVariants200Response success(bool success) =>
      call(success: success);

  @override
  ProductControllerGetProductWithVariants200Response error(Object? error) =>
      call(error: error);

  @override
  ProductControllerGetProductWithVariants200Response payload(Object? payload) =>
      call(payload: payload);

  @override
  ProductControllerGetProductWithVariants200Response data(
    ProductWithVariantsResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductWithVariants200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductWithVariants200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductWithVariants200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetProductWithVariants200Response(
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
          : payload as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as ProductWithVariantsResponse?,
    );
  }
}

extension $ProductControllerGetProductWithVariants200ResponseCopyWith
    on ProductControllerGetProductWithVariants200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetProductWithVariants200Response.copyWith(...)` or `instanceOfProductControllerGetProductWithVariants200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetProductWithVariants200ResponseCWProxy get copyWith =>
      _$ProductControllerGetProductWithVariants200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetProductWithVariants200Response
_$ProductControllerGetProductWithVariants200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetProductWithVariants200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = ProductControllerGetProductWithVariants200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      payload: $checkedConvert('payload', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : ProductWithVariantsResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$ProductControllerGetProductWithVariants200ResponseToJson(
  ProductControllerGetProductWithVariants200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload,
  'data': ?instance.data?.toJson(),
};
