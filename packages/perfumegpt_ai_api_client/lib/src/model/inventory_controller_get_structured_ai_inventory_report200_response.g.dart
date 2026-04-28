// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_structured_ai_inventory_report200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetStructuredAIInventoryReport200ResponseCWProxy {
  InventoryControllerGetStructuredAIInventoryReport200Response success(
    bool? success,
  );

  InventoryControllerGetStructuredAIInventoryReport200Response error(
    String? error,
  );

  InventoryControllerGetStructuredAIInventoryReport200Response details(
    String? details,
  );

  InventoryControllerGetStructuredAIInventoryReport200Response data(
    AIInventoryReportStructuredResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetStructuredAIInventoryReport200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetStructuredAIInventoryReport200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetStructuredAIInventoryReport200Response call({
    bool? success,
    String? error,
    String? details,
    AIInventoryReportStructuredResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetStructuredAIInventoryReport200Response.copyWith(...)` or call `instanceOfInventoryControllerGetStructuredAIInventoryReport200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetStructuredAIInventoryReport200ResponseCWProxyImpl
    implements
        _$InventoryControllerGetStructuredAIInventoryReport200ResponseCWProxy {
  const _$InventoryControllerGetStructuredAIInventoryReport200ResponseCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetStructuredAIInventoryReport200Response _value;

  @override
  InventoryControllerGetStructuredAIInventoryReport200Response success(
    bool? success,
  ) => call(success: success);

  @override
  InventoryControllerGetStructuredAIInventoryReport200Response error(
    String? error,
  ) => call(error: error);

  @override
  InventoryControllerGetStructuredAIInventoryReport200Response details(
    String? details,
  ) => call(details: details);

  @override
  InventoryControllerGetStructuredAIInventoryReport200Response data(
    AIInventoryReportStructuredResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetStructuredAIInventoryReport200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetStructuredAIInventoryReport200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetStructuredAIInventoryReport200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetStructuredAIInventoryReport200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as AIInventoryReportStructuredResponse?,
    );
  }
}

extension $InventoryControllerGetStructuredAIInventoryReport200ResponseCopyWith
    on InventoryControllerGetStructuredAIInventoryReport200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetStructuredAIInventoryReport200Response.copyWith(...)` or `instanceOfInventoryControllerGetStructuredAIInventoryReport200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetStructuredAIInventoryReport200ResponseCWProxy
  get copyWith =>
      _$InventoryControllerGetStructuredAIInventoryReport200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetStructuredAIInventoryReport200Response
_$InventoryControllerGetStructuredAIInventoryReport200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetStructuredAIInventoryReport200Response',
  json,
  ($checkedConvert) {
    final val = InventoryControllerGetStructuredAIInventoryReport200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : AIInventoryReportStructuredResponse.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$InventoryControllerGetStructuredAIInventoryReport200ResponseToJson(
  InventoryControllerGetStructuredAIInventoryReport200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
