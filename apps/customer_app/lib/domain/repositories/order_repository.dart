import '../entities/checkout_result.dart';
import '../entities/order.dart';

class CheckoutRequest {
  final String paymentMethod; // CashOnDelivery, VnPay, Momo, CashInStore, ExternalBankTransfer, PayOs
  final String deliveryMethod; // Delivery, PickupInStore
  final List<String>? itemIds;
  final double? expectedTotalPrice;
  final String? voucherCode;
  final String? savedAddressId;
  final RecipientAddress? recipient;

  const CheckoutRequest({
    required this.paymentMethod,
    this.deliveryMethod = 'Delivery',
    this.itemIds,
    this.expectedTotalPrice,
    this.voucherCode,
    this.savedAddressId,
    this.recipient,
  });
}

class RecipientAddress {
  final String contactName;
  final String contactPhoneNumber;
  final int? districtId;
  final String districtName;
  final String wardCode;
  final String wardName;
  final int? provinceId;
  final String provinceName;
  final String fullAddress;

  const RecipientAddress({
    required this.contactName,
    required this.contactPhoneNumber,
    this.districtId,
    required this.districtName,
    required this.wardCode,
    required this.wardName,
    this.provinceId,
    required this.provinceName,
    required this.fullAddress,
  });
}

abstract class OrderRepository {
  Future<CheckoutResult> checkout(CheckoutRequest request);
  Future<PaginatedOrders> getMyOrders({
    String? status,
    String? type,
    String? paymentStatus,
    String? searchTerm,
    int? page,
    int? pageSize,
  });
  Future<OrderDetail> getOrderDetail(String orderId);
  Future<Invoice> getInvoice(String orderId);
  Future<void> cancelOrder(String orderId, String reason, {
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
  });
  Future<String> retryPayment(String paymentId, String paymentMethod);
  Future<void> confirmPayment(String paymentId, {required bool isSuccess, String? failureReason});
}
