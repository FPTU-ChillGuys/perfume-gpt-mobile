// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_best_selling_products200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetBestSellingProducts200ResponseCWProxy {
  ProductControllerGetBestSellingProducts200Response success(bool success);

  ProductControllerGetBestSellingProducts200Response error(Object? error);

  ProductControllerGetBestSellingProducts200Response payload(
    ProductControllerGetBestSellingProducts200ResponseAllOfPayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetBestSellingProducts200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetBestSellingProducts200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetBestSellingProducts200Response call({
    bool success,
    Object? error,
    ProductControllerGetBestSellingProducts200ResponseAllOfPayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetBestSellingProducts200Response.copyWith(...)` or call `instanceOfProductControllerGetBestSellingProducts200Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetBestSellingProducts200ResponseCWProxyImpl
    implements _$ProductControllerGetBestSellingProducts200ResponseCWProxy {
  const _$ProductControllerGetBestSellingProducts200ResponseCWProxyImpl(
    this._value,
  );

  final ProductControllerGetBestSellingProducts200Response _value;

  @override
  ProductControllerGetBestSellingProducts200Response success(bool success) =>
      call(success: success);

  @override
  ProductControllerGetBestSellingProducts200Response error(Object? error) =>
      call(error: error);

  @override
  ProductControllerGetBestSellingProducts200Response payload(
    ProductControllerGetBestSellingProducts200ResponseAllOfPayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetBestSellingProducts200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetBestSellingProducts200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetBestSellingProducts200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetBestSellingProducts200Response(
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
                as ProductControllerGetBestSellingProducts200ResponseAllOfPayload?,
    );
  }
}

extension $ProductControllerGetBestSellingProducts200ResponseCopyWith
    on ProductControllerGetBestSellingProducts200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetBestSellingProducts200Response.copyWith(...)` or `instanceOfProductControllerGetBestSellingProducts200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetBestSellingProducts200ResponseCWProxy get copyWith =>
      _$ProductControllerGetBestSellingProducts200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetBestSellingProducts200Response
_$ProductControllerGetBestSellingProducts200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductControllerGetBestSellingProducts200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = ProductControllerGetBestSellingProducts200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ProductControllerGetBestSellingProducts200ResponseAllOfPayload.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductControllerGetBestSellingProducts200ResponseToJson(
  ProductControllerGetBestSellingProducts200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
