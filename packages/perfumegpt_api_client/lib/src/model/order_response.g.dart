// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderResponseCWProxy {
  OrderResponse id(String? id);

  OrderResponse code(String code);

  OrderResponse customerId(String? customerId);

  OrderResponse customerName(String? customerName);

  OrderResponse customerEmail(String? customerEmail);

  OrderResponse customerPhoneNumber(String? customerPhoneNumber);

  OrderResponse staffId(String? staffId);

  OrderResponse staffName(String? staffName);

  OrderResponse type(OrderType? type);

  OrderResponse status(OrderStatus? status);

  OrderResponse isReturnable(bool? isReturnable);

  OrderResponse paymentStatus(PaymentStatus? paymentStatus);

  OrderResponse totalAmount(num? totalAmount);

  OrderResponse requiredDepositAmount(num? requiredDepositAmount);

  OrderResponse paidAmount(num? paidAmount);

  OrderResponse remainingAmount(num? remainingAmount);

  OrderResponse subTotal(num? subTotal);

  OrderResponse shippingFee(num? shippingFee);

  OrderResponse voucherId(String? voucherId);

  OrderResponse voucherCode(String? voucherCode);

  OrderResponse voucherType(VoucherType? voucherType);

  OrderResponse voucherDiscountTotal(num? voucherDiscountTotal);

  OrderResponse paymentExpiresAt(DateTime? paymentExpiresAt);

  OrderResponse paidAt(DateTime? paidAt);

  OrderResponse createdAt(DateTime? createdAt);

  OrderResponse updatedAt(DateTime? updatedAt);

  OrderResponse paymentTransactions(
    List<PaymentInfoResponse>? paymentTransactions,
  );

  OrderResponse shippingInfo(ShippingInfoResponse? shippingInfo);

  OrderResponse recipientInfo(RecipientInfoResponse? recipientInfo);

  OrderResponse orderDetails(List<OrderDetailResponse> orderDetails);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderResponse call({
    String? id,
    String code,
    String? customerId,
    String? customerName,
    String? customerEmail,
    String? customerPhoneNumber,
    String? staffId,
    String? staffName,
    OrderType? type,
    OrderStatus? status,
    bool? isReturnable,
    PaymentStatus? paymentStatus,
    num? totalAmount,
    num? requiredDepositAmount,
    num? paidAmount,
    num? remainingAmount,
    num? subTotal,
    num? shippingFee,
    String? voucherId,
    String? voucherCode,
    VoucherType? voucherType,
    num? voucherDiscountTotal,
    DateTime? paymentExpiresAt,
    DateTime? paidAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<PaymentInfoResponse>? paymentTransactions,
    ShippingInfoResponse? shippingInfo,
    RecipientInfoResponse? recipientInfo,
    List<OrderDetailResponse> orderDetails,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderResponse.copyWith(...)` or call `instanceOfOrderResponse.copyWith.fieldName(value)` for a single field.
class _$OrderResponseCWProxyImpl implements _$OrderResponseCWProxy {
  const _$OrderResponseCWProxyImpl(this._value);

  final OrderResponse _value;

  @override
  OrderResponse id(String? id) => call(id: id);

  @override
  OrderResponse code(String code) => call(code: code);

  @override
  OrderResponse customerId(String? customerId) => call(customerId: customerId);

  @override
  OrderResponse customerName(String? customerName) =>
      call(customerName: customerName);

  @override
  OrderResponse customerEmail(String? customerEmail) =>
      call(customerEmail: customerEmail);

  @override
  OrderResponse customerPhoneNumber(String? customerPhoneNumber) =>
      call(customerPhoneNumber: customerPhoneNumber);

  @override
  OrderResponse staffId(String? staffId) => call(staffId: staffId);

  @override
  OrderResponse staffName(String? staffName) => call(staffName: staffName);

  @override
  OrderResponse type(OrderType? type) => call(type: type);

  @override
  OrderResponse status(OrderStatus? status) => call(status: status);

  @override
  OrderResponse isReturnable(bool? isReturnable) =>
      call(isReturnable: isReturnable);

  @override
  OrderResponse paymentStatus(PaymentStatus? paymentStatus) =>
      call(paymentStatus: paymentStatus);

  @override
  OrderResponse totalAmount(num? totalAmount) => call(totalAmount: totalAmount);

  @override
  OrderResponse requiredDepositAmount(num? requiredDepositAmount) =>
      call(requiredDepositAmount: requiredDepositAmount);

  @override
  OrderResponse paidAmount(num? paidAmount) => call(paidAmount: paidAmount);

  @override
  OrderResponse remainingAmount(num? remainingAmount) =>
      call(remainingAmount: remainingAmount);

  @override
  OrderResponse subTotal(num? subTotal) => call(subTotal: subTotal);

  @override
  OrderResponse shippingFee(num? shippingFee) => call(shippingFee: shippingFee);

  @override
  OrderResponse voucherId(String? voucherId) => call(voucherId: voucherId);

  @override
  OrderResponse voucherCode(String? voucherCode) =>
      call(voucherCode: voucherCode);

  @override
  OrderResponse voucherType(VoucherType? voucherType) =>
      call(voucherType: voucherType);

  @override
  OrderResponse voucherDiscountTotal(num? voucherDiscountTotal) =>
      call(voucherDiscountTotal: voucherDiscountTotal);

  @override
  OrderResponse paymentExpiresAt(DateTime? paymentExpiresAt) =>
      call(paymentExpiresAt: paymentExpiresAt);

  @override
  OrderResponse paidAt(DateTime? paidAt) => call(paidAt: paidAt);

  @override
  OrderResponse createdAt(DateTime? createdAt) => call(createdAt: createdAt);

  @override
  OrderResponse updatedAt(DateTime? updatedAt) => call(updatedAt: updatedAt);

  @override
  OrderResponse paymentTransactions(
    List<PaymentInfoResponse>? paymentTransactions,
  ) => call(paymentTransactions: paymentTransactions);

  @override
  OrderResponse shippingInfo(ShippingInfoResponse? shippingInfo) =>
      call(shippingInfo: shippingInfo);

  @override
  OrderResponse recipientInfo(RecipientInfoResponse? recipientInfo) =>
      call(recipientInfo: recipientInfo);

  @override
  OrderResponse orderDetails(List<OrderDetailResponse> orderDetails) =>
      call(orderDetails: orderDetails);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customerName = const $CopyWithPlaceholder(),
    Object? customerEmail = const $CopyWithPlaceholder(),
    Object? customerPhoneNumber = const $CopyWithPlaceholder(),
    Object? staffId = const $CopyWithPlaceholder(),
    Object? staffName = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? isReturnable = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? totalAmount = const $CopyWithPlaceholder(),
    Object? requiredDepositAmount = const $CopyWithPlaceholder(),
    Object? paidAmount = const $CopyWithPlaceholder(),
    Object? remainingAmount = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? voucherId = const $CopyWithPlaceholder(),
    Object? voucherCode = const $CopyWithPlaceholder(),
    Object? voucherType = const $CopyWithPlaceholder(),
    Object? voucherDiscountTotal = const $CopyWithPlaceholder(),
    Object? paymentExpiresAt = const $CopyWithPlaceholder(),
    Object? paidAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? paymentTransactions = const $CopyWithPlaceholder(),
    Object? shippingInfo = const $CopyWithPlaceholder(),
    Object? recipientInfo = const $CopyWithPlaceholder(),
    Object? orderDetails = const $CopyWithPlaceholder(),
  }) {
    return OrderResponse(
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
      customerEmail: customerEmail == const $CopyWithPlaceholder()
          ? _value.customerEmail
          // ignore: cast_nullable_to_non_nullable
          : customerEmail as String?,
      customerPhoneNumber: customerPhoneNumber == const $CopyWithPlaceholder()
          ? _value.customerPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : customerPhoneNumber as String?,
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
      isReturnable: isReturnable == const $CopyWithPlaceholder()
          ? _value.isReturnable
          // ignore: cast_nullable_to_non_nullable
          : isReturnable as bool?,
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
      subTotal: subTotal == const $CopyWithPlaceholder()
          ? _value.subTotal
          // ignore: cast_nullable_to_non_nullable
          : subTotal as num?,
      shippingFee: shippingFee == const $CopyWithPlaceholder()
          ? _value.shippingFee
          // ignore: cast_nullable_to_non_nullable
          : shippingFee as num?,
      voucherId: voucherId == const $CopyWithPlaceholder()
          ? _value.voucherId
          // ignore: cast_nullable_to_non_nullable
          : voucherId as String?,
      voucherCode: voucherCode == const $CopyWithPlaceholder()
          ? _value.voucherCode
          // ignore: cast_nullable_to_non_nullable
          : voucherCode as String?,
      voucherType: voucherType == const $CopyWithPlaceholder()
          ? _value.voucherType
          // ignore: cast_nullable_to_non_nullable
          : voucherType as VoucherType?,
      voucherDiscountTotal: voucherDiscountTotal == const $CopyWithPlaceholder()
          ? _value.voucherDiscountTotal
          // ignore: cast_nullable_to_non_nullable
          : voucherDiscountTotal as num?,
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
      orderDetails:
          orderDetails == const $CopyWithPlaceholder() || orderDetails == null
          ? _value.orderDetails
          // ignore: cast_nullable_to_non_nullable
          : orderDetails as List<OrderDetailResponse>,
    );
  }
}

extension $OrderResponseCopyWith on OrderResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderResponse.copyWith(...)` or `instanceOfOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderResponseCWProxy get copyWith => _$OrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResponse _$OrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'orderDetails']);
  final val = OrderResponse(
    id: $checkedConvert('id', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String),
    customerId: $checkedConvert('customerId', (v) => v as String?),
    customerName: $checkedConvert('customerName', (v) => v as String?),
    customerEmail: $checkedConvert('customerEmail', (v) => v as String?),
    customerPhoneNumber: $checkedConvert(
      'customerPhoneNumber',
      (v) => v as String?,
    ),
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
    isReturnable: $checkedConvert('isReturnable', (v) => v as bool?),
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
    subTotal: $checkedConvert('subTotal', (v) => v as num?),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    voucherId: $checkedConvert('voucherId', (v) => v as String?),
    voucherCode: $checkedConvert('voucherCode', (v) => v as String?),
    voucherType: $checkedConvert(
      'voucherType',
      (v) => $enumDecodeNullable(_$VoucherTypeEnumMap, v),
    ),
    voucherDiscountTotal: $checkedConvert(
      'voucherDiscountTotal',
      (v) => v as num?,
    ),
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
      (v) => (v as List<dynamic>)
          .map((e) => OrderDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'code': instance.code,
      'customerId': ?instance.customerId,
      'customerName': ?instance.customerName,
      'customerEmail': ?instance.customerEmail,
      'customerPhoneNumber': ?instance.customerPhoneNumber,
      'staffId': ?instance.staffId,
      'staffName': ?instance.staffName,
      'type': ?_$OrderTypeEnumMap[instance.type],
      'status': ?_$OrderStatusEnumMap[instance.status],
      'isReturnable': ?instance.isReturnable,
      'paymentStatus': ?_$PaymentStatusEnumMap[instance.paymentStatus],
      'totalAmount': ?instance.totalAmount,
      'requiredDepositAmount': ?instance.requiredDepositAmount,
      'paidAmount': ?instance.paidAmount,
      'remainingAmount': ?instance.remainingAmount,
      'subTotal': ?instance.subTotal,
      'shippingFee': ?instance.shippingFee,
      'voucherId': ?instance.voucherId,
      'voucherCode': ?instance.voucherCode,
      'voucherType': ?_$VoucherTypeEnumMap[instance.voucherType],
      'voucherDiscountTotal': ?instance.voucherDiscountTotal,
      'paymentExpiresAt': ?instance.paymentExpiresAt?.toIso8601String(),
      'paidAt': ?instance.paidAt?.toIso8601String(),
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
      'paymentTransactions': ?instance.paymentTransactions
          ?.map((e) => e.toJson())
          .toList(),
      'shippingInfo': ?instance.shippingInfo?.toJson(),
      'recipientInfo': ?instance.recipientInfo?.toJson(),
      'orderDetails': instance.orderDetails.map((e) => e.toJson()).toList(),
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

const _$VoucherTypeEnumMap = {
  VoucherType.order: 'Order',
  VoucherType.product: 'Product',
};
