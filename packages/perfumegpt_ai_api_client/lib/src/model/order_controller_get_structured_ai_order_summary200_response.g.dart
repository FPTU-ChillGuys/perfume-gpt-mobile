// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_controller_get_structured_ai_order_summary200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderControllerGetStructuredAIOrderSummary200ResponseCWProxy {
  OrderControllerGetStructuredAIOrderSummary200Response success(bool? success);

  OrderControllerGetStructuredAIOrderSummary200Response error(String? error);

  OrderControllerGetStructuredAIOrderSummary200Response details(
    String? details,
  );

  OrderControllerGetStructuredAIOrderSummary200Response data(
    AIOrderSummaryStructuredResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetStructuredAIOrderSummary200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetStructuredAIOrderSummary200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetStructuredAIOrderSummary200Response call({
    bool? success,
    String? error,
    String? details,
    AIOrderSummaryStructuredResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderControllerGetStructuredAIOrderSummary200Response.copyWith(...)` or call `instanceOfOrderControllerGetStructuredAIOrderSummary200Response.copyWith.fieldName(value)` for a single field.
class _$OrderControllerGetStructuredAIOrderSummary200ResponseCWProxyImpl
    implements _$OrderControllerGetStructuredAIOrderSummary200ResponseCWProxy {
  const _$OrderControllerGetStructuredAIOrderSummary200ResponseCWProxyImpl(
    this._value,
  );

  final OrderControllerGetStructuredAIOrderSummary200Response _value;

  @override
  OrderControllerGetStructuredAIOrderSummary200Response success(
    bool? success,
  ) => call(success: success);

  @override
  OrderControllerGetStructuredAIOrderSummary200Response error(String? error) =>
      call(error: error);

  @override
  OrderControllerGetStructuredAIOrderSummary200Response details(
    String? details,
  ) => call(details: details);

  @override
  OrderControllerGetStructuredAIOrderSummary200Response data(
    AIOrderSummaryStructuredResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetStructuredAIOrderSummary200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetStructuredAIOrderSummary200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetStructuredAIOrderSummary200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return OrderControllerGetStructuredAIOrderSummary200Response(
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
          : data as AIOrderSummaryStructuredResponse?,
    );
  }
}

extension $OrderControllerGetStructuredAIOrderSummary200ResponseCopyWith
    on OrderControllerGetStructuredAIOrderSummary200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderControllerGetStructuredAIOrderSummary200Response.copyWith(...)` or `instanceOfOrderControllerGetStructuredAIOrderSummary200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderControllerGetStructuredAIOrderSummary200ResponseCWProxy get copyWith =>
      _$OrderControllerGetStructuredAIOrderSummary200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderControllerGetStructuredAIOrderSummary200Response
_$OrderControllerGetStructuredAIOrderSummary200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'OrderControllerGetStructuredAIOrderSummary200Response',
  json,
  ($checkedConvert) {
    final val = OrderControllerGetStructuredAIOrderSummary200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : AIOrderSummaryStructuredResponse.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$OrderControllerGetStructuredAIOrderSummary200ResponseToJson(
  OrderControllerGetStructuredAIOrderSummary200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
