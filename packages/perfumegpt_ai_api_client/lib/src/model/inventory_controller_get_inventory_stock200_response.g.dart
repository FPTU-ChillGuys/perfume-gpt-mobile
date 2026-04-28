// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_stock200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryStock200ResponseCWProxy {
  InventoryControllerGetInventoryStock200Response success(bool? success);

  InventoryControllerGetInventoryStock200Response error(String? error);

  InventoryControllerGetInventoryStock200Response payload(
    InventoryControllerGetInventoryStock200ResponsePayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryStock200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryStock200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryStock200Response call({
    bool? success,
    String? error,
    InventoryControllerGetInventoryStock200ResponsePayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryStock200Response.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryStock200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryStock200ResponseCWProxyImpl
    implements _$InventoryControllerGetInventoryStock200ResponseCWProxy {
  const _$InventoryControllerGetInventoryStock200ResponseCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryStock200Response _value;

  @override
  InventoryControllerGetInventoryStock200Response success(bool? success) =>
      call(success: success);

  @override
  InventoryControllerGetInventoryStock200Response error(String? error) =>
      call(error: error);

  @override
  InventoryControllerGetInventoryStock200Response payload(
    InventoryControllerGetInventoryStock200ResponsePayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryStock200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryStock200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryStock200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryStock200Response(
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
          : payload as InventoryControllerGetInventoryStock200ResponsePayload?,
    );
  }
}

extension $InventoryControllerGetInventoryStock200ResponseCopyWith
    on InventoryControllerGetInventoryStock200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryStock200Response.copyWith(...)` or `instanceOfInventoryControllerGetInventoryStock200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryStock200ResponseCWProxy get copyWith =>
      _$InventoryControllerGetInventoryStock200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryStock200Response
_$InventoryControllerGetInventoryStock200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryControllerGetInventoryStock200Response', json, (
  $checkedConvert,
) {
  final val = InventoryControllerGetInventoryStock200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : InventoryControllerGetInventoryStock200ResponsePayload.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
});

Map<String, dynamic> _$InventoryControllerGetInventoryStock200ResponseToJson(
  InventoryControllerGetInventoryStock200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
