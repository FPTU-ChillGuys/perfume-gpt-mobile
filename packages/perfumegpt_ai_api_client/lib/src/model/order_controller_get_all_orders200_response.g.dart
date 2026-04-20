// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_controller_get_all_orders200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderControllerGetAllOrders200ResponseCWProxy {
  OrderControllerGetAllOrders200Response success(bool success);

  OrderControllerGetAllOrders200Response error(Object? error);

  OrderControllerGetAllOrders200Response payload(
    OrderControllerGetAllOrders200ResponseAllOfPayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetAllOrders200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetAllOrders200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetAllOrders200Response call({
    bool success,
    Object? error,
    OrderControllerGetAllOrders200ResponseAllOfPayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderControllerGetAllOrders200Response.copyWith(...)` or call `instanceOfOrderControllerGetAllOrders200Response.copyWith.fieldName(value)` for a single field.
class _$OrderControllerGetAllOrders200ResponseCWProxyImpl
    implements _$OrderControllerGetAllOrders200ResponseCWProxy {
  const _$OrderControllerGetAllOrders200ResponseCWProxyImpl(this._value);

  final OrderControllerGetAllOrders200Response _value;

  @override
  OrderControllerGetAllOrders200Response success(bool success) =>
      call(success: success);

  @override
  OrderControllerGetAllOrders200Response error(Object? error) =>
      call(error: error);

  @override
  OrderControllerGetAllOrders200Response payload(
    OrderControllerGetAllOrders200ResponseAllOfPayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetAllOrders200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetAllOrders200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetAllOrders200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return OrderControllerGetAllOrders200Response(
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
          : payload as OrderControllerGetAllOrders200ResponseAllOfPayload?,
    );
  }
}

extension $OrderControllerGetAllOrders200ResponseCopyWith
    on OrderControllerGetAllOrders200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderControllerGetAllOrders200Response.copyWith(...)` or `instanceOfOrderControllerGetAllOrders200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderControllerGetAllOrders200ResponseCWProxy get copyWith =>
      _$OrderControllerGetAllOrders200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderControllerGetAllOrders200Response
_$OrderControllerGetAllOrders200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OrderControllerGetAllOrders200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = OrderControllerGetAllOrders200Response(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : OrderControllerGetAllOrders200ResponseAllOfPayload.fromJson(
                  v as Map<String, dynamic>,
                ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrderControllerGetAllOrders200ResponseToJson(
  OrderControllerGetAllOrders200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
