// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_batch200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetBatch200ResponseCWProxy {
  InventoryControllerGetBatch200Response success(bool success);

  InventoryControllerGetBatch200Response error(Object? error);

  InventoryControllerGetBatch200Response payload(
    InventoryControllerGetBatch200ResponseAllOfPayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetBatch200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetBatch200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetBatch200Response call({
    bool success,
    Object? error,
    InventoryControllerGetBatch200ResponseAllOfPayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetBatch200Response.copyWith(...)` or call `instanceOfInventoryControllerGetBatch200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetBatch200ResponseCWProxyImpl
    implements _$InventoryControllerGetBatch200ResponseCWProxy {
  const _$InventoryControllerGetBatch200ResponseCWProxyImpl(this._value);

  final InventoryControllerGetBatch200Response _value;

  @override
  InventoryControllerGetBatch200Response success(bool success) =>
      call(success: success);

  @override
  InventoryControllerGetBatch200Response error(Object? error) =>
      call(error: error);

  @override
  InventoryControllerGetBatch200Response payload(
    InventoryControllerGetBatch200ResponseAllOfPayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetBatch200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetBatch200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetBatch200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetBatch200Response(
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
          : payload as InventoryControllerGetBatch200ResponseAllOfPayload?,
    );
  }
}

extension $InventoryControllerGetBatch200ResponseCopyWith
    on InventoryControllerGetBatch200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetBatch200Response.copyWith(...)` or `instanceOfInventoryControllerGetBatch200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetBatch200ResponseCWProxy get copyWith =>
      _$InventoryControllerGetBatch200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetBatch200Response
_$InventoryControllerGetBatch200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InventoryControllerGetBatch200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = InventoryControllerGetBatch200Response(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : InventoryControllerGetBatch200ResponseAllOfPayload.fromJson(
                  v as Map<String, dynamic>,
                ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InventoryControllerGetBatch200ResponseToJson(
  InventoryControllerGetBatch200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
