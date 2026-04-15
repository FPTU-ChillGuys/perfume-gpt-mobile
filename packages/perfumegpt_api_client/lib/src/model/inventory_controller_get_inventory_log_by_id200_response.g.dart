// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_log_by_id200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryLogById200ResponseCWProxy {
  InventoryControllerGetInventoryLogById200Response success(bool success);

  InventoryControllerGetInventoryLogById200Response error(Object? error);

  InventoryControllerGetInventoryLogById200Response details(Object? details);

  InventoryControllerGetInventoryLogById200Response data(InventoryLog? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryLogById200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryLogById200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryLogById200Response call({
    bool success,
    Object? error,
    Object? details,
    InventoryLog? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryLogById200Response.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryLogById200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryLogById200ResponseCWProxyImpl
    implements _$InventoryControllerGetInventoryLogById200ResponseCWProxy {
  const _$InventoryControllerGetInventoryLogById200ResponseCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryLogById200Response _value;

  @override
  InventoryControllerGetInventoryLogById200Response success(bool success) =>
      call(success: success);

  @override
  InventoryControllerGetInventoryLogById200Response error(Object? error) =>
      call(error: error);

  @override
  InventoryControllerGetInventoryLogById200Response details(Object? details) =>
      call(details: details);

  @override
  InventoryControllerGetInventoryLogById200Response data(InventoryLog? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryLogById200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryLogById200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryLogById200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryLogById200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as InventoryLog?,
    );
  }
}

extension $InventoryControllerGetInventoryLogById200ResponseCopyWith
    on InventoryControllerGetInventoryLogById200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryLogById200Response.copyWith(...)` or `instanceOfInventoryControllerGetInventoryLogById200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryLogById200ResponseCWProxy get copyWith =>
      _$InventoryControllerGetInventoryLogById200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryLogById200Response
_$InventoryControllerGetInventoryLogById200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryControllerGetInventoryLogById200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = InventoryControllerGetInventoryLogById200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    details: $checkedConvert('details', (v) => v),
    data: $checkedConvert(
      'data',
      (v) =>
          v == null ? null : InventoryLog.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$InventoryControllerGetInventoryLogById200ResponseToJson(
  InventoryControllerGetInventoryLogById200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
