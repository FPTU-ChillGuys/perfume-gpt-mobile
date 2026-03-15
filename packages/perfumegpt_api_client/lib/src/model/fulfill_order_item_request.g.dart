// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfill_order_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FulfillOrderItemRequestCWProxy {
  FulfillOrderItemRequest orderDetailId(String? orderDetailId);

  FulfillOrderItemRequest scannedBatchCode(String? scannedBatchCode);

  FulfillOrderItemRequest quantity(int? quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FulfillOrderItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FulfillOrderItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  FulfillOrderItemRequest call({
    String? orderDetailId,
    String? scannedBatchCode,
    int? quantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFulfillOrderItemRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFulfillOrderItemRequest.copyWith.fieldName(...)`
class _$FulfillOrderItemRequestCWProxyImpl
    implements _$FulfillOrderItemRequestCWProxy {
  const _$FulfillOrderItemRequestCWProxyImpl(this._value);

  final FulfillOrderItemRequest _value;

  @override
  FulfillOrderItemRequest orderDetailId(String? orderDetailId) =>
      this(orderDetailId: orderDetailId);

  @override
  FulfillOrderItemRequest scannedBatchCode(String? scannedBatchCode) =>
      this(scannedBatchCode: scannedBatchCode);

  @override
  FulfillOrderItemRequest quantity(int? quantity) => this(quantity: quantity);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FulfillOrderItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FulfillOrderItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfFulfillOrderItemRequest.copyWith(...)` or like so:`instanceOfFulfillOrderItemRequest.copyWith.fieldName(...)`.
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
