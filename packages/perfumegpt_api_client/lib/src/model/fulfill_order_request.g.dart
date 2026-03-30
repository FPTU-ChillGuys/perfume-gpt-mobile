// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfill_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FulfillOrderRequestCWProxy {
  FulfillOrderRequest items(List<FulfillOrderItemRequest> items);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FulfillOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FulfillOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  FulfillOrderRequest call({List<FulfillOrderItemRequest> items});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFulfillOrderRequest.copyWith(...)` or call `instanceOfFulfillOrderRequest.copyWith.fieldName(value)` for a single field.
class _$FulfillOrderRequestCWProxyImpl implements _$FulfillOrderRequestCWProxy {
  const _$FulfillOrderRequestCWProxyImpl(this._value);

  final FulfillOrderRequest _value;

  @override
  FulfillOrderRequest items(List<FulfillOrderItemRequest> items) =>
      call(items: items);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FulfillOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FulfillOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  FulfillOrderRequest call({Object? items = const $CopyWithPlaceholder()}) {
    return FulfillOrderRequest(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<FulfillOrderItemRequest>,
    );
  }
}

extension $FulfillOrderRequestCopyWith on FulfillOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFulfillOrderRequest.copyWith(...)` or `instanceOfFulfillOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FulfillOrderRequestCWProxy get copyWith =>
      _$FulfillOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillOrderRequest _$FulfillOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FulfillOrderRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['items']);
      final val = FulfillOrderRequest(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    FulfillOrderItemRequest.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FulfillOrderRequestToJson(
  FulfillOrderRequest instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};
