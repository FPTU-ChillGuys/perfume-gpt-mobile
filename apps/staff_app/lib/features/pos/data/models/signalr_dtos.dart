import 'package:freezed_annotation/freezed_annotation.dart';

part 'signalr_dtos.freezed.dart';
part 'signalr_dtos.g.dart';

@freezed
abstract class CartDisplayDto with _$CartDisplayDto {
  const factory CartDisplayDto({
    @Default([]) List<CartItemDto> items,
    @Default(0.0) double totalAmount,
    @Default(0.0) double taxAmount,
    @Default(0.0) double discountAmount,
  }) = _CartDisplayDto;

  factory CartDisplayDto.fromJson(Map<String, dynamic> json) =>
      _$CartDisplayDtoFromJson(json);
}

@freezed
abstract class CartItemDto with _$CartItemDto {
  const factory CartItemDto({
    required String id,
    required String name,
    required String imageUrl,
    required int quantity,
    required double price,
    required double total,
  }) = _CartItemDto;

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);
}

@freezed
abstract class PosPaymentCompletedDto with _$PosPaymentCompletedDto {
  const factory PosPaymentCompletedDto({
    required String orderId,
    required String orderCode,
    required double amount,
    required bool isSuccess,
    String? message,
  }) = _PosPaymentCompletedDto;

  factory PosPaymentCompletedDto.fromJson(Map<String, dynamic> json) =>
      _$PosPaymentCompletedDtoFromJson(json);
}

@freezed
abstract class PosPaymentLinkDto with _$PosPaymentLinkDto {
  const factory PosPaymentLinkDto({
    required String orderId,
    required String orderCode,
    required String paymentUrl,
    required double amount,
  }) = _PosPaymentLinkDto;

  factory PosPaymentLinkDto.fromJson(Map<String, dynamic> json) =>
      _$PosPaymentLinkDtoFromJson(json);
}
