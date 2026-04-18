// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signalr_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartDisplayDto _$CartDisplayDtoFromJson(Map<String, dynamic> json) =>
    _CartDisplayDto(
      items: (json['items'] as List<dynamic>)
          .map(
            (e) => PosOrderDetailListItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      subTotal: (json['subTotal'] as num?)?.toDouble() ?? 0.0,
      shippingFee: (json['shippingFee'] as num?)?.toDouble() ?? 0.0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
      paymentUrl: json['paymentUrl'] as String?,
      message: json['message'] as String?,
      voucherCode: json['voucherCode'] as String?,
    );

Map<String, dynamic> _$CartDisplayDtoToJson(_CartDisplayDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'subTotal': instance.subTotal,
      'shippingFee': instance.shippingFee,
      'discount': instance.discount,
      'totalPrice': instance.totalPrice,
      'paymentUrl': instance.paymentUrl,
      'message': instance.message,
      'voucherCode': instance.voucherCode,
    };

_PosPaymentCompletedDto _$PosPaymentCompletedDtoFromJson(
  Map<String, dynamic> json,
) => _PosPaymentCompletedDto(
  orderId: json['orderId'] as String,
  paymentId: json['paymentId'] as String,
  status: json['status'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$PosPaymentCompletedDtoToJson(
  _PosPaymentCompletedDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'paymentId': instance.paymentId,
  'status': instance.status,
  'message': instance.message,
};

_PosPaymentLinkDto _$PosPaymentLinkDtoFromJson(Map<String, dynamic> json) =>
    _PosPaymentLinkDto(
      orderId: json['orderId'] as String,
      paymentId: json['paymentId'] as String,
      method: json['method'] as String,
      paymentUrl: json['paymentUrl'] as String,
    );

Map<String, dynamic> _$PosPaymentLinkDtoToJson(_PosPaymentLinkDto instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'method': instance.method,
      'paymentUrl': instance.paymentUrl,
    };
