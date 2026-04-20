// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_all_products200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetAllProducts200ResponseCWProxy {
  ProductControllerGetAllProducts200Response success(bool success);

  ProductControllerGetAllProducts200Response error(Object? error);

  ProductControllerGetAllProducts200Response payload(
    ProductControllerGetAllProducts200ResponseAllOfPayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts200Response call({
    bool success,
    Object? error,
    ProductControllerGetAllProducts200ResponseAllOfPayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetAllProducts200Response.copyWith(...)` or call `instanceOfProductControllerGetAllProducts200Response.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetAllProducts200ResponseCWProxyImpl
    implements _$ProductControllerGetAllProducts200ResponseCWProxy {
  const _$ProductControllerGetAllProducts200ResponseCWProxyImpl(this._value);

  final ProductControllerGetAllProducts200Response _value;

  @override
  ProductControllerGetAllProducts200Response success(bool success) =>
      call(success: success);

  @override
  ProductControllerGetAllProducts200Response error(Object? error) =>
      call(error: error);

  @override
  ProductControllerGetAllProducts200Response payload(
    ProductControllerGetAllProducts200ResponseAllOfPayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetAllProducts200Response(
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
          : payload as ProductControllerGetAllProducts200ResponseAllOfPayload?,
    );
  }
}

extension $ProductControllerGetAllProducts200ResponseCopyWith
    on ProductControllerGetAllProducts200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetAllProducts200Response.copyWith(...)` or `instanceOfProductControllerGetAllProducts200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetAllProducts200ResponseCWProxy get copyWith =>
      _$ProductControllerGetAllProducts200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetAllProducts200Response
_$ProductControllerGetAllProducts200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductControllerGetAllProducts200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = ProductControllerGetAllProducts200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ProductControllerGetAllProducts200ResponseAllOfPayload.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductControllerGetAllProducts200ResponseToJson(
  ProductControllerGetAllProducts200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
