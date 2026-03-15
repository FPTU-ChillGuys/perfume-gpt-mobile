// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserOrderResponseCWProxy {
  UserOrderResponse id(String? id);

  UserOrderResponse type(OrderType? type);

  UserOrderResponse status(OrderStatus? status);

  UserOrderResponse paymentStatus(PaymentStatus? paymentStatus);

  UserOrderResponse totalAmount(num? totalAmount);

  UserOrderResponse voucherCode(String? voucherCode);

  UserOrderResponse paymentExpiresAt(DateTime? paymentExpiresAt);

  UserOrderResponse paidAt(DateTime? paidAt);

  UserOrderResponse createdAt(DateTime? createdAt);

  UserOrderResponse updatedAt(DateTime? updatedAt);

  UserOrderResponse paymentTransactions(
    List<PaymentInfoResponse>? paymentTransactions,
  );

  UserOrderResponse shippingInfo(ShippingInfoResponse? shippingInfo);

  UserOrderResponse recipientInfo(RecipientInfoResponse? recipientInfo);

  UserOrderResponse orderDetails(List<OrderDetailResponse>? orderDetails);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserOrderResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserOrderResponse call({
    String? id,
    OrderType? type,
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    num? totalAmount,
    String? voucherCode,
    DateTime? paymentExpiresAt,
    DateTime? paidAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<PaymentInfoResponse>? paymentTransactions,
    ShippingInfoResponse? shippingInfo,
    RecipientInfoResponse? recipientInfo,
    List<OrderDetailResponse>? orderDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserOrderResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserOrderResponse.copyWith.fieldName(...)`
class _$UserOrderResponseCWProxyImpl implements _$UserOrderResponseCWProxy {
  const _$UserOrderResponseCWProxyImpl(this._value);

  final UserOrderResponse _value;

  @override
  UserOrderResponse id(String? id) => this(id: id);

  @override
  UserOrderResponse type(OrderType? type) => this(type: type);

  @override
  UserOrderResponse status(OrderStatus? status) => this(status: status);

  @override
  UserOrderResponse paymentStatus(PaymentStatus? paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  UserOrderResponse totalAmount(num? totalAmount) =>
      this(totalAmount: totalAmount);

  @override
  UserOrderResponse voucherCode(String? voucherCode) =>
      this(voucherCode: voucherCode);

  @override
  UserOrderResponse paymentExpiresAt(DateTime? paymentExpiresAt) =>
      this(paymentExpiresAt: paymentExpiresAt);

  @override
  UserOrderResponse paidAt(DateTime? paidAt) => this(paidAt: paidAt);

  @override
  UserOrderResponse createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  UserOrderResponse updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  UserOrderResponse paymentTransactions(
    List<PaymentInfoResponse>? paymentTransactions,
  ) => this(paymentTransactions: paymentTransactions);

  @override
  UserOrderResponse shippingInfo(ShippingInfoResponse? shippingInfo) =>
      this(shippingInfo: shippingInfo);

  @override
  UserOrderResponse recipientInfo(RecipientInfoResponse? recipientInfo) =>
      this(recipientInfo: recipientInfo);

  @override
  UserOrderResponse orderDetails(List<OrderDetailResponse>? orderDetails) =>
      this(orderDetails: orderDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserOrderResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserOrderResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? totalAmount = const $CopyWithPlaceholder(),
    Object? voucherCode = const $CopyWithPlaceholder(),
    Object? paymentExpiresAt = const $CopyWithPlaceholder(),
    Object? paidAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? paymentTransactions = const $CopyWithPlaceholder(),
    Object? shippingInfo = const $CopyWithPlaceholder(),
    Object? recipientInfo = const $CopyWithPlaceholder(),
    Object? orderDetails = const $CopyWithPlaceholder(),
  }) {
    return UserOrderResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
      voucherCode: voucherCode == const $CopyWithPlaceholder()
          ? _value.voucherCode
          // ignore: cast_nullable_to_non_nullable
          : voucherCode as String?,
      paymentExpiresAt: paymentExpiresAt == const $CopyWithPlaceholder()
          ? _value.paymentExpiresAt
          // ignore: cast_nullable_to_non_nullable
          : paymentExpiresAt as DateTime?,
      paidAt: paidAt == const $CopyWithPlaceholder()
          ? _value.paidAt
          // ignore: cast_nullable_to_non_nullable
          : paidAt as DateTime?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      paymentTransactions: paymentTransactions == const $CopyWithPlaceholder()
          ? _value.paymentTransactions
          // ignore: cast_nullable_to_non_nullable
          : paymentTransactions as List<PaymentInfoResponse>?,
      shippingInfo: shippingInfo == const $CopyWithPlaceholder()
          ? _value.shippingInfo
          // ignore: cast_nullable_to_non_nullable
          : shippingInfo as ShippingInfoResponse?,
      recipientInfo: recipientInfo == const $CopyWithPlaceholder()
          ? _value.recipientInfo
          // ignore: cast_nullable_to_non_nullable
          : recipientInfo as RecipientInfoResponse?,
      orderDetails: orderDetails == const $CopyWithPlaceholder()
          ? _value.orderDetails
          // ignore: cast_nullable_to_non_nullable
          : orderDetails as List<OrderDetailResponse>?,
    );
  }
}

extension $UserOrderResponseCopyWith on UserOrderResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUserOrderResponse.copyWith(...)` or like so:`instanceOfUserOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserOrderResponseCWProxy get copyWith =>
      _$UserOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOrderResponse _$UserOrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserOrderResponse', json, ($checkedConvert) {
  final val = UserOrderResponse(
    id: $checkedConvert('id', (v) => v as String?),
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
    voucherCode: $checkedConvert('voucherCode', (v) => v as String?),
    paymentExpiresAt: $checkedConvert(
      'paymentExpiresAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    paidAt: $checkedConvert(
      'paidAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    paymentTransactions: $checkedConvert(
      'paymentTransactions',
      (v) => (v as List<dynamic>?)
          ?.map((e) => PaymentInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    shippingInfo: $checkedConvert(
      'shippingInfo',
      (v) => v == null
          ? null
          : ShippingInfoResponse.fromJson(v as Map<String, dynamic>),
    ),
    recipientInfo: $checkedConvert(
      'recipientInfo',
      (v) => v == null
          ? null
          : RecipientInfoResponse.fromJson(v as Map<String, dynamic>),
    ),
    orderDetails: $checkedConvert(
      'orderDetails',
      (v) => (v as List<dynamic>?)
          ?.map((e) => OrderDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserOrderResponseToJson(UserOrderResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'type': ?_$OrderTypeEnumMap[instance.type],
      'status': ?_$OrderStatusEnumMap[instance.status],
      'paymentStatus': ?_$PaymentStatusEnumMap[instance.paymentStatus],
      'totalAmount': ?instance.totalAmount,
      'voucherCode': ?instance.voucherCode,
      'paymentExpiresAt': ?instance.paymentExpiresAt?.toIso8601String(),
      'paidAt': ?instance.paidAt?.toIso8601String(),
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
      'paymentTransactions': ?instance.paymentTransactions
          ?.map((e) => e.toJson())
          .toList(),
      'shippingInfo': ?instance.shippingInfo?.toJson(),
      'recipientInfo': ?instance.recipientInfo?.toJson(),
      'orderDetails': ?instance.orderDetails?.map((e) => e.toJson()).toList(),
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
