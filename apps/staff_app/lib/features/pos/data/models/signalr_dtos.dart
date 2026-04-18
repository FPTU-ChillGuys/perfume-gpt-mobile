import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

part 'signalr_dtos.freezed.dart';
part 'signalr_dtos.g.dart';

@freezed
abstract class CartDisplayDto with _$CartDisplayDto {
  const factory CartDisplayDto({
    required List<PosOrderDetailListItem> items,
    @Default(0.0) double subTotal,
    @Default(0.0) double shippingFee,
    @Default(0.0) double discount,
    @Default(0.0) double totalPrice,
    String? paymentUrl,
    String? message,
    String? voucherCode,
  }) = _CartDisplayDto;

  factory CartDisplayDto.fromJson(Map<String, dynamic> json) =>
      _$CartDisplayDtoFromJson(json);
}

@freezed
abstract class PosPaymentCompletedDto with _$PosPaymentCompletedDto {
  const factory PosPaymentCompletedDto({
    required String orderId,
    required String paymentId,
    required String status,
    required String message,
  }) = _PosPaymentCompletedDto;

  factory PosPaymentCompletedDto.fromJson(Map<String, dynamic> json) =>
      _$PosPaymentCompletedDtoFromJson(json);
}

@freezed
abstract class PosPaymentLinkDto with _$PosPaymentLinkDto {
  const factory PosPaymentLinkDto({
    required String orderId,
    required String paymentId,
    required String method,
    required String paymentUrl,
  }) = _PosPaymentLinkDto;

  factory PosPaymentLinkDto.fromJson(Map<String, dynamic> json) =>
      _$PosPaymentLinkDtoFromJson(json);
}
