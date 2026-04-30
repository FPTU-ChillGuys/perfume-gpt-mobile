// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderListItemCWProxy {
  OrderListItem id(String? id);

  OrderListItem code(String code);

  OrderListItem customerId(String? customerId);

  OrderListItem customerName(String? customerName);

  OrderListItem staffId(String? staffId);

  OrderListItem staffName(String? staffName);

  OrderListItem type(OrderType? type);

  OrderListItem status(OrderStatus? status);

  OrderListItem paymentStatus(PaymentStatus? paymentStatus);

  OrderListItem totalAmount(num? totalAmount);

  OrderListItem requiredDepositAmount(num? requiredDepositAmount);

  OrderListItem paidAmount(num? paidAmount);

  OrderListItem remainingAmount(num? remainingAmount);

  OrderListItem itemCount(int? itemCount);

  OrderListItem isReturnalbe(bool? isReturnalbe);

  OrderListItem shippingStatus(ShippingStatus? shippingStatus);

  OrderListItem createdAt(DateTime? createdAt);

  OrderListItem paymentExpiresAt(DateTime? paymentExpiresAt);

  OrderListItem updatedAt(DateTime? updatedAt);

  OrderListItem orderDetails(List<OrderDetailListItem> orderDetails);

  OrderListItem paymentTransactions(
    List<PaymentInfoResponse>? paymentTransactions,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderListItem call({
    String? id,
    String code,
    String? customerId,
    String? customerName,
    String? staffId,
    String? staffName,
    OrderType? type,
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    num? totalAmount,
    num? requiredDepositAmount,
    num? paidAmount,
    num? remainingAmount,
    int? itemCount,
    bool? isReturnalbe,
    ShippingStatus? shippingStatus,
    DateTime? createdAt,
    DateTime? paymentExpiresAt,
    DateTime? updatedAt,
    List<OrderDetailListItem> orderDetails,
    List<PaymentInfoResponse>? paymentTransactions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderListItem.copyWith(...)` or call `instanceOfOrderListItem.copyWith.fieldName(value)` for a single field.
class _$OrderListItemCWProxyImpl implements _$OrderListItemCWProxy {
  const _$OrderListItemCWProxyImpl(this._value);

  final OrderListItem _value;

  @override
  OrderListItem id(String? id) => call(id: id);

  @override
  OrderListItem code(String code) => call(code: code);

  @override
  OrderListItem customerId(String? customerId) => call(customerId: customerId);

  @override
  OrderListItem customerName(String? customerName) =>
      call(customerName: customerName);

  @override
  OrderListItem staffId(String? staffId) => call(staffId: staffId);

  @override
  OrderListItem staffName(String? staffName) => call(staffName: staffName);

  @override
  OrderListItem type(OrderType? type) => call(type: type);

  @override
  OrderListItem status(OrderStatus? status) => call(status: status);

  @override
  OrderListItem paymentStatus(PaymentStatus? paymentStatus) =>
      call(paymentStatus: paymentStatus);

  @override
  OrderListItem totalAmount(num? totalAmount) => call(totalAmount: totalAmount);

  @override
  OrderListItem requiredDepositAmount(num? requiredDepositAmount) =>
      call(requiredDepositAmount: requiredDepositAmount);

  @override
  OrderListItem paidAmount(num? paidAmount) => call(paidAmount: paidAmount);

  @override
  OrderListItem remainingAmount(num? remainingAmount) =>
      call(remainingAmount: remainingAmount);

  @override
  OrderListItem itemCount(int? itemCount) => call(itemCount: itemCount);

  @override
  OrderListItem isReturnalbe(bool? isReturnalbe) =>
      call(isReturnalbe: isReturnalbe);

  @override
  OrderListItem shippingStatus(ShippingStatus? shippingStatus) =>
      call(shippingStatus: shippingStatus);

  @override
  OrderListItem createdAt(DateTime? createdAt) => call(createdAt: createdAt);

  @override
  OrderListItem paymentExpiresAt(DateTime? paymentExpiresAt) =>
      call(paymentExpiresAt: paymentExpiresAt);

  @override
  OrderListItem updatedAt(DateTime? updatedAt) => call(updatedAt: updatedAt);

  @override
  OrderListItem orderDetails(List<OrderDetailListItem> orderDetails) =>
      call(orderDetails: orderDetails);

  @override
  OrderListItem paymentTransactions(
    List<PaymentInfoResponse>? paymentTransactions,
  ) => call(paymentTransactions: paymentTransactions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customerName = const $CopyWithPlaceholder(),
    Object? staffId = const $CopyWithPlaceholder(),
    Object? staffName = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? totalAmount = const $CopyWithPlaceholder(),
    Object? requiredDepositAmount = const $CopyWithPlaceholder(),
    Object? paidAmount = const $CopyWithPlaceholder(),
    Object? remainingAmount = const $CopyWithPlaceholder(),
    Object? itemCount = const $CopyWithPlaceholder(),
    Object? isReturnalbe = const $CopyWithPlaceholder(),
    Object? shippingStatus = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? paymentExpiresAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? orderDetails = const $CopyWithPlaceholder(),
    Object? paymentTransactions = const $CopyWithPlaceholder(),
  }) {
    return OrderListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
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
      requiredDepositAmount:
          requiredDepositAmount == const $CopyWithPlaceholder()
          ? _value.requiredDepositAmount
          // ignore: cast_nullable_to_non_nullable
          : requiredDepositAmount as num?,
      paidAmount: paidAmount == const $CopyWithPlaceholder()
          ? _value.paidAmount
          // ignore: cast_nullable_to_non_nullable
          : paidAmount as num?,
      remainingAmount: remainingAmount == const $CopyWithPlaceholder()
          ? _value.remainingAmount
          // ignore: cast_nullable_to_non_nullable
          : remainingAmount as num?,
      itemCount: itemCount == const $CopyWithPlaceholder()
          ? _value.itemCount
          // ignore: cast_nullable_to_non_nullable
          : itemCount as int?,
      isReturnalbe: isReturnalbe == const $CopyWithPlaceholder()
          ? _value.isReturnalbe
          // ignore: cast_nullable_to_non_nullable
          : isReturnalbe as bool?,
      shippingStatus: shippingStatus == const $CopyWithPlaceholder()
          ? _value.shippingStatus
          // ignore: cast_nullable_to_non_nullable
          : shippingStatus as ShippingStatus?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      paymentExpiresAt: paymentExpiresAt == const $CopyWithPlaceholder()
          ? _value.paymentExpiresAt
          // ignore: cast_nullable_to_non_nullable
          : paymentExpiresAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      orderDetails:
          orderDetails == const $CopyWithPlaceholder() || orderDetails == null
          ? _value.orderDetails
          // ignore: cast_nullable_to_non_nullable
          : orderDetails as List<OrderDetailListItem>,
      paymentTransactions: paymentTransactions == const $CopyWithPlaceholder()
          ? _value.paymentTransactions
          // ignore: cast_nullable_to_non_nullable
          : paymentTransactions as List<PaymentInfoResponse>?,
    );
  }
}

extension $OrderListItemCopyWith on OrderListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderListItem.copyWith(...)` or `instanceOfOrderListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderListItemCWProxy get copyWith => _$OrderListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListItem _$OrderListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderListItem', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'orderDetails']);
  final val = OrderListItem(
    id: $checkedConvert('id', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String),
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
    requiredDepositAmount: $checkedConvert(
      'requiredDepositAmount',
      (v) => v as num?,
    ),
    paidAmount: $checkedConvert('paidAmount', (v) => v as num?),
    remainingAmount: $checkedConvert('remainingAmount', (v) => v as num?),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    isReturnalbe: $checkedConvert('isReturnalbe', (v) => v as bool?),
    shippingStatus: $checkedConvert(
      'shippingStatus',
      (v) => $enumDecodeNullable(_$ShippingStatusEnumMap, v),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    paymentExpiresAt: $checkedConvert(
      'paymentExpiresAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    orderDetails: $checkedConvert(
      'orderDetails',
      (v) => (v as List<dynamic>)
          .map((e) => OrderDetailListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    paymentTransactions: $checkedConvert(
      'paymentTransactions',
      (v) => (v as List<dynamic>?)
          ?.map((e) => PaymentInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$OrderListItemToJson(OrderListItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'code': instance.code,
      'customerId': ?instance.customerId,
      'customerName': ?instance.customerName,
      'staffId': ?instance.staffId,
      'staffName': ?instance.staffName,
      'type': ?_$OrderTypeEnumMap[instance.type],
      'status': ?_$OrderStatusEnumMap[instance.status],
      'paymentStatus': ?_$PaymentStatusEnumMap[instance.paymentStatus],
      'totalAmount': ?instance.totalAmount,
      'requiredDepositAmount': ?instance.requiredDepositAmount,
      'paidAmount': ?instance.paidAmount,
      'remainingAmount': ?instance.remainingAmount,
      'itemCount': ?instance.itemCount,
      'isReturnalbe': ?instance.isReturnalbe,
      'shippingStatus': ?_$ShippingStatusEnumMap[instance.shippingStatus],
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'paymentExpiresAt': ?instance.paymentExpiresAt?.toIso8601String(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
      'orderDetails': instance.orderDetails.map((e) => e.toJson()).toList(),
      'paymentTransactions': ?instance.paymentTransactions
          ?.map((e) => e.toJson())
          .toList(),
    };

const _$OrderTypeEnumMap = {
  OrderType.online: 'Online',
  OrderType.offline: 'Offline',
};

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'Pending',
  OrderStatus.preparing: 'Preparing',
  OrderStatus.readyToPick: 'ReadyToPick',
  OrderStatus.delivering: 'Delivering',
  OrderStatus.delivered: 'Delivered',
  OrderStatus.returning: 'Returning',
  OrderStatus.cancelled: 'Cancelled',
  OrderStatus.partialReturned: 'Partial_Returned',
  OrderStatus.returned: 'Returned',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'Unpaid',
  PaymentStatus.partialPaid: 'PartialPaid',
  PaymentStatus.paid: 'Paid',
  PaymentStatus.refunded: 'Refunded',
  PaymentStatus.partialRefunded: 'PartialRefunded',
};

const _$ShippingStatusEnumMap = {
  ShippingStatus.unAssigned: 'UnAssigned',
  ShippingStatus.readyToPick: 'ReadyToPick',
  ShippingStatus.delivering: 'Delivering',
  ShippingStatus.delivered: 'Delivered',
  ShippingStatus.cancelled: 'Cancelled',
  ShippingStatus.returning: 'Returning',
  ShippingStatus.returned: 'Returned',
};
