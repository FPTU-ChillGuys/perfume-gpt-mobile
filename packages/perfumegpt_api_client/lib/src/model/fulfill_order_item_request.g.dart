// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfill_order_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FulfillOrderItemRequestCWProxy {
  FulfillOrderItemRequest orderDetailId(String? orderDetailId);

  FulfillOrderItemRequest scannedBatchCode(String? scannedBatchCode);

  FulfillOrderItemRequest quantity(int? quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FulfillOrderItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FulfillOrderItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  FulfillOrderItemRequest call({
    String? orderDetailId,
    String? scannedBatchCode,
    int? quantity,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFulfillOrderItemRequest.copyWith(...)` or call `instanceOfFulfillOrderItemRequest.copyWith.fieldName(value)` for a single field.
class _$FulfillOrderItemRequestCWProxyImpl
    implements _$FulfillOrderItemRequestCWProxy {
  const _$FulfillOrderItemRequestCWProxyImpl(this._value);

  final FulfillOrderItemRequest _value;

  @override
  FulfillOrderItemRequest orderDetailId(String? orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  FulfillOrderItemRequest scannedBatchCode(String? scannedBatchCode) =>
      call(scannedBatchCode: scannedBatchCode);

  @override
  FulfillOrderItemRequest quantity(int? quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FulfillOrderItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FulfillOrderItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  FulfillOrderItemRequest call({
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? scannedBatchCode = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return FulfillOrderItemRequest(
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
      scannedBatchCode: scannedBatchCode == const $CopyWithPlaceholder()
          ? _value.scannedBatchCode
          // ignore: cast_nullable_to_non_nullable
          : scannedBatchCode as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $FulfillOrderItemRequestCopyWith on FulfillOrderItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFulfillOrderItemRequest.copyWith(...)` or `instanceOfFulfillOrderItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FulfillOrderItemRequestCWProxy get copyWith =>
      _$FulfillOrderItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillOrderItemRequest _$FulfillOrderItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FulfillOrderItemRequest', json, ($checkedConvert) {
  final val = FulfillOrderItemRequest(
    orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
    scannedBatchCode: $checkedConvert('scannedBatchCode', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$FulfillOrderItemRequestToJson(
  FulfillOrderItemRequest instance,
) => <String, dynamic>{
  'orderDetailId': ?instance.orderDetailId,
  'scannedBatchCode': ?instance.scannedBatchCode,
  'quantity': ?instance.quantity,
};
