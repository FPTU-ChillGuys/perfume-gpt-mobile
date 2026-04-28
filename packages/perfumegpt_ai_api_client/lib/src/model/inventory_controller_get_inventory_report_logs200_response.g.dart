// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_report_logs200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryReportLogs200ResponseCWProxy {
  InventoryControllerGetInventoryReportLogs200Response success(bool? success);

  InventoryControllerGetInventoryReportLogs200Response error(String? error);

  InventoryControllerGetInventoryReportLogs200Response payload(
    InventoryControllerGetInventoryReportLogs200ResponsePayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryReportLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryReportLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryReportLogs200Response call({
    bool? success,
    String? error,
    InventoryControllerGetInventoryReportLogs200ResponsePayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryReportLogs200Response.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryReportLogs200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryReportLogs200ResponseCWProxyImpl
    implements _$InventoryControllerGetInventoryReportLogs200ResponseCWProxy {
  const _$InventoryControllerGetInventoryReportLogs200ResponseCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryReportLogs200Response _value;

  @override
  InventoryControllerGetInventoryReportLogs200Response success(bool? success) =>
      call(success: success);

  @override
  InventoryControllerGetInventoryReportLogs200Response error(String? error) =>
      call(error: error);

  @override
  InventoryControllerGetInventoryReportLogs200Response payload(
    InventoryControllerGetInventoryReportLogs200ResponsePayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryReportLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryReportLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryReportLogs200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryReportLogs200Response(
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
          : payload
                as InventoryControllerGetInventoryReportLogs200ResponsePayload?,
    );
  }
}

extension $InventoryControllerGetInventoryReportLogs200ResponseCopyWith
    on InventoryControllerGetInventoryReportLogs200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryReportLogs200Response.copyWith(...)` or `instanceOfInventoryControllerGetInventoryReportLogs200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryReportLogs200ResponseCWProxy get copyWith =>
      _$InventoryControllerGetInventoryReportLogs200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryReportLogs200Response
_$InventoryControllerGetInventoryReportLogs200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetInventoryReportLogs200Response',
  json,
  ($checkedConvert) {
    final val = InventoryControllerGetInventoryReportLogs200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : InventoryControllerGetInventoryReportLogs200ResponsePayload.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$InventoryControllerGetInventoryReportLogs200ResponseToJson(
  InventoryControllerGetInventoryReportLogs200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
