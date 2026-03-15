// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderListItemCWProxy {
  OrderListItem id(String? id);

  OrderListItem customerId(String? customerId);

  OrderListItem customerName(String? customerName);

  OrderListItem staffId(String? staffId);

  OrderListItem staffName(String? staffName);

  OrderListItem type(OrderType? type);

  OrderListItem status(OrderStatus? status);

  OrderListItem paymentStatus(PaymentStatus? paymentStatus);

  OrderListItem totalAmount(num? totalAmount);

  OrderListItem itemCount(int? itemCount);

  OrderListItem shippingStatus(int? shippingStatus);

  OrderListItem createdAt(DateTime? createdAt);

  OrderListItem updatedAt(DateTime? updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderListItem call({
    String? id,
    String? customerId,
    String? customerName,
    String? staffId,
    String? staffName,
    OrderType? type,
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    num? totalAmount,
    int? itemCount,
    int? shippingStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderListItem.copyWith.fieldName(...)`
class _$OrderListItemCWProxyImpl implements _$OrderListItemCWProxy {
  const _$OrderListItemCWProxyImpl(this._value);

  final OrderListItem _value;

  @override
  OrderListItem id(String? id) => this(id: id);

  @override
  OrderListItem customerId(String? customerId) => this(customerId: customerId);

  @override
  OrderListItem customerName(String? customerName) =>
      this(customerName: customerName);

  @override
  OrderListItem staffId(String? staffId) => this(staffId: staffId);

  @override
  OrderListItem staffName(String? staffName) => this(staffName: staffName);

  @override
  OrderListItem type(OrderType? type) => this(type: type);

  @override
  OrderListItem status(OrderStatus? status) => this(status: status);

  @override
  OrderListItem paymentStatus(PaymentStatus? paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  OrderListItem totalAmount(num? totalAmount) => this(totalAmount: totalAmount);

  @override
  OrderListItem itemCount(int? itemCount) => this(itemCount: itemCount);

  @override
  OrderListItem shippingStatus(int? shippingStatus) =>
      this(shippingStatus: shippingStatus);

  @override
  OrderListItem createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  OrderListItem updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customerName = const $CopyWithPlaceholder(),
    Object? staffId = const $CopyWithPlaceholder(),
    Object? staffName = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? totalAmount = const $CopyWithPlaceholder(),
    Object? itemCount = const $CopyWithPlaceholder(),
    Object? shippingStatus = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return OrderListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      customerName: customerName == const $CopyWithPlaceholder()
          ? _value.customerName
          // ignore: cast_nullable_to_non_nullable
          : customerName as String?,
      staffId: staffId == const $CopyWithPlaceholder()
          ? _value.staffId
          // ignore: cast_nullable_to_non_nullable
          : staffId as String?,
      staffName: staffName == const $CopyWithPlaceholder()
          ? _value.staffName
          // ignore: cast_nullable_to_non_nullable
          : staffName as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as OrderType?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as OrderStatus?,
      paymentStatus: paymentStatus == const $CopyWithPlaceholder()
          ? _value.paymentStatus
          // ignore: cast_nullable_to_non_nullable
          : paymentStatus as PaymentStatus?,
      totalAmount: totalAmount == const $CopyWithPlaceholder()
          ? _value.totalAmount
          // ignore: cast_nullable_to_non_nullable
          : totalAmount as num?,
      itemCount: itemCount == const $CopyWithPlaceholder()
          ? _value.itemCount
          // ignore: cast_nullable_to_non_nullable
          : itemCount as int?,
      shippingStatus: shippingStatus == const $CopyWithPlaceholder()
          ? _value.shippingStatus
          // ignore: cast_nullable_to_non_nullable
          : shippingStatus as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $OrderListItemCopyWith on OrderListItem {
  /// Returns a callable class that can be used as follows: `instanceOfOrderListItem.copyWith(...)` or like so:`instanceOfOrderListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderListItemCWProxy get copyWith => _$OrderListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListItem _$OrderListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OrderListItem', json, ($checkedConvert) {
      final val = OrderListItem(
        id: $checkedConvert('id', (v) => v as String?),
        customerId: $checkedConvert('customerId', (v) => v as String?),
        customerName: $checkedConvert('customerName', (v) => v as String?),
        staffId: $checkedConvert('staffId', (v) => v as String?),
        staffName: $checkedConvert('staffName', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$OrderTypeEnumMap, v),
        ),
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$OrderStatusEnumMap, v),
        ),
        paymentStatus: $checkedConvert(
          'paymentStatus',
          (v) => $enumDecodeNullable(_$PaymentStatusEnumMap, v),
        ),
        totalAmount: $checkedConvert('totalAmount', (v) => v as num?),
        itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
        shippingStatus: $checkedConvert(
          'shippingStatus',
          (v) => (v as num?)?.toInt(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrderListItemToJson(OrderListItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'customerId': ?instance.customerId,
      'customerName': ?instance.customerName,
      'staffId': ?instance.staffId,
      'staffName': ?instance.staffName,
      'type': ?_$OrderTypeEnumMap[instance.type],
      'status': ?_$OrderStatusEnumMap[instance.status],
      'paymentStatus': ?_$PaymentStatusEnumMap[instance.paymentStatus],
      'totalAmount': ?instance.totalAmount,
      'itemCount': ?instance.itemCount,
      'shippingStatus': ?instance.shippingStatus,
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
    };

const _$OrderTypeEnumMap = {
  OrderType.online: 'Online',
  OrderType.offline: 'Offline',
  OrderType.shoppe: 'Shoppe',
};

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'Pending',
  OrderStatus.processing: 'Processing',
  OrderStatus.delivering: 'Delivering',
  OrderStatus.delivered: 'Delivered',
  OrderStatus.canceled: 'Canceled',
  OrderStatus.returned: 'Returned',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'Unpaid',
  PaymentStatus.paid: 'Paid',
  PaymentStatus.refunded: 'Refunded',
};
