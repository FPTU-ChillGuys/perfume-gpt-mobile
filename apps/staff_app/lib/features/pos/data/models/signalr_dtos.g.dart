// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signalr_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartDisplayDto _$CartDisplayDtoFromJson(Map<String, dynamic> json) =>
    _CartDisplayDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0.0,
      taxAmount: (json['taxAmount'] as num?)?.toDouble() ?? 0.0,
      discountAmount: (json['discountAmount'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CartDisplayDtoToJson(_CartDisplayDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalAmount': instance.totalAmount,
      'taxAmount': instance.taxAmount,
      'discountAmount': instance.discountAmount,
    };

_CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) => _CartItemDto(
  id: json['id'] as String,
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  quantity: (json['quantity'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  total: (json['total'] as num).toDouble(),
);

Map<String, dynamic> _$CartItemDtoToJson(_CartItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'quantity': instance.quantity,
      'price': instance.price,
      'total': instance.total,
    };

_PosPaymentCompletedDto _$PosPaymentCompletedDtoFromJson(
  Map<String, dynamic> json,
) => _PosPaymentCompletedDto(
  orderId: json['orderId'] as String,
  orderCode: json['orderCode'] as String,
  amount: (json['amount'] as num).toDouble(),
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String?,
);

Map<String, dynamic> _$PosPaymentCompletedDtoToJson(
  _PosPaymentCompletedDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'orderCode': instance.orderCode,
  'amount': instance.amount,
  'isSuccess': instance.isSuccess,
  'message': instance.message,
};

_PosPaymentLinkDto _$PosPaymentLinkDtoFromJson(Map<String, dynamic> json) =>
    _PosPaymentLinkDto(
      orderId: json['orderId'] as String,
      orderCode: json['orderCode'] as String,
      paymentUrl: json['paymentUrl'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$PosPaymentLinkDtoToJson(_PosPaymentLinkDto instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderCode': instance.orderCode,
      'paymentUrl': instance.paymentUrl,
      'amount': instance.amount,
    };
