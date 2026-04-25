/// Paginated result of orders
class PaginatedOrders {
  final List<OrderSummary> items;
  final int totalCount;
  final int totalPages;
  final bool hasNextPage;
  final bool hasPreviousPage;

  const PaginatedOrders({
    required this.items,
    required this.totalCount,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });
}

/// Order list item from GET /api/orders/my-orders
class OrderSummary {
  final String id;
  final String code;
  final String? type;
  final String? status;
  final String? paymentStatus;
  final double totalAmount;
  final double requiredDepositAmount;
  final double depositAmount;
  final double paidAmount;
  final double remainingAmount;
  final int? itemCount;
  final bool? isReturnable;
  final String? shippingStatus;
  final DateTime? createdAt;
  final List<OrderDetailItem> orderDetails;

  const OrderSummary({
    required this.id,
    required this.code,
    this.type,
    this.status,
    this.paymentStatus,
    required this.totalAmount,
    this.requiredDepositAmount = 0.0,
    this.depositAmount = 0.0,
    this.paidAmount = 0.0,
    this.remainingAmount = 0.0,
    this.itemCount,
    this.isReturnable,
    this.shippingStatus,
    this.createdAt,
    this.orderDetails = const [],
  });
}

/// Order detail item from order details
class OrderDetailItem {
  final String id;
  final String variantId;
  final String variantName;
  final String? imageUrl;
  final int quantity;
  final double unitPrice;
  final double total;

  const OrderDetailItem({
    required this.id,
    required this.variantId,
    required this.variantName,
    this.imageUrl,
    required this.quantity,
    required this.unitPrice,
    required this.total,
  });
}

/// Recipient info
class RecipientInfo {
  final String? name;
  final String? phoneNumber;
  final String? districtName;
  final String? wardName;
  final String? provinceName;
  final String? fullAddress;

  const RecipientInfo({
    this.name,
    this.phoneNumber,
    this.districtName,
    this.wardName,
    this.provinceName,
    this.fullAddress,
  });
}

/// Shipping info
class ShippingInfo {
  final String? carrierName;
  final String? trackingNumber;
  final double shippingFee;
  final String? status;
  final DateTime? estimatedDeliveryDate;

  const ShippingInfo({
    this.carrierName,
    this.trackingNumber,
    required this.shippingFee,
    this.status,
    this.estimatedDeliveryDate,
  });
}

/// Payment transaction info
class PaymentTransaction {
  final String id;
  final String? transactionType;
  final String? status;
  final String? paymentMethod;
  final String? failureReason;
  final double totalAmount;

  const PaymentTransaction({
    required this.id,
    this.transactionType,
    this.status,
    this.paymentMethod,
    this.failureReason,
    required this.totalAmount,
  });
}

/// Full order detail from GET /api/orders/my-orders/{orderId}
class OrderDetail {
  final String id;
  final String code;
  final String? type;
  final String? status;
  final bool? isReturnable;
  final String? paymentStatus;
  final double totalAmount;
  final double requiredDepositAmount;
  final double depositAmount;
  final double paidAmount;
  final double remainingAmount;
  final double subTotal;
  final double shippingFee;
  final String? voucherCode;
  final String? voucherType;
  final double voucherDiscountTotal;
  final DateTime? paymentExpiresAt;
  final DateTime? paidAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<PaymentTransaction> paymentTransactions;
  final ShippingInfo? shippingInfo;
  final RecipientInfo? recipientInfo;
  final List<OrderDetailItem> orderDetails;

  const OrderDetail({
    required this.id,
    required this.code,
    this.type,
    this.status,
    this.isReturnable,
    this.paymentStatus,
    required this.totalAmount,
    this.requiredDepositAmount = 0.0,
    this.depositAmount = 0.0,
    this.paidAmount = 0.0,
    this.remainingAmount = 0.0,
    this.subTotal = 0.0,
    this.shippingFee = 0.0,
    this.voucherCode,
    this.voucherType,
    this.voucherDiscountTotal = 0.0,
    this.paymentExpiresAt,
    this.paidAt,
    this.createdAt,
    this.updatedAt,
    required this.paymentTransactions,
    this.shippingInfo,
    this.recipientInfo,
    required this.orderDetails,
  });
}

/// Invoice item
class InvoiceItem {
  final String productName;
  final String variantInfo;
  final int quantity;
  final double unitPrice;
  final double subtotal;

  const InvoiceItem({
    required this.productName,
    required this.variantInfo,
    required this.quantity,
    required this.unitPrice,
    required this.subtotal,
  });
}

/// Invoice/Receipt from GET /api/orders/my-orders/{orderId}/invoice
class Invoice {
  final String? orderId;
  final String code;
  final DateTime? orderDate;
  final String orderStatus;
  final String staffName;
  final String customerName;
  final String recipientPhone;
  final String recipientAddress;
  final List<InvoiceItem> items;
  final double subtotal;
  final double depositAmount;
  final double remainingAmount;
  final double shippingFee;
  final double discount;
  final double tax;
  final double total;
  final String paymentMethod;
  final String? note;

  const Invoice({
    this.orderId,
    required this.code,
    this.orderDate,
    required this.orderStatus,
    required this.staffName,
    required this.customerName,
    required this.recipientPhone,
    required this.recipientAddress,
    required this.items,
    required this.subtotal,
    this.depositAmount = 0.0,
    this.remainingAmount = 0.0,
    this.shippingFee = 0.0,
    required this.discount,
    required this.tax,
    required this.total,
    required this.paymentMethod,
    this.note,
  });
}
