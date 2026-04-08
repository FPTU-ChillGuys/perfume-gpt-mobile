class ReturnRequest {
  final String id;
  final String orderId;
  final String? orderCode;
  final String status; // Pending, RequestMoreInfo, ApprovedForReturn, Inspecting, ReadyForRefund, Completed, Rejected
  final String? reason;
  final String? customerNote;
  final String? staffNote;
  final String? inspectionNote;
  final double requestedRefundAmount;
  final double? approvedRefundAmount;
  final double? refundableAmount;
  final String? requestedByEmail;
  final String? customerId;
  final String? processedByName;
  final String? inspectedByName;
  final ReturnShippingInfo? returnShippingInfo;
  final List<ReturnDetail> returnDetails;
  final List<ProofMedia> proofImages;
  final DateTime createdAt;
  final DateTime? updatedAt;
  // Refund bank info
  final String? refundBankName;
  final String? refundAccountNumber;
  final String? refundAccountName;
  final bool? isRestocked;

  const ReturnRequest({
    required this.id,
    required this.orderId,
    this.orderCode,
    required this.status,
    this.reason,
    this.customerNote,
    this.staffNote,
    this.inspectionNote,
    this.requestedRefundAmount = 0,
    this.approvedRefundAmount,
    this.refundableAmount,
    this.requestedByEmail,
    this.customerId,
    this.processedByName,
    this.inspectedByName,
    this.returnShippingInfo,
    this.returnDetails = const [],
    this.proofImages = const [],
    required this.createdAt,
    this.updatedAt,
    this.refundBankName,
    this.refundAccountNumber,
    this.refundAccountName,
    this.isRestocked,
  });
}

class ReturnDetail {
  final String? id;
  final String? orderDetailId;
  final String? variantId;
  final int requestedQuantity;
  final double unitPrice;
  final double refundableAmount;

  const ReturnDetail({
    this.id,
    this.orderDetailId,
    this.variantId,
    this.requestedQuantity = 0,
    this.unitPrice = 0,
    this.refundableAmount = 0,
  });
}

class ReturnShippingInfo {
  final String? carrierName;
  final String? trackingNumber;
  final String? status;
  final double shippingFee;
  final DateTime? estimatedDeliveryDate;

  const ReturnShippingInfo({
    this.carrierName,
    this.trackingNumber,
    this.status,
    this.shippingFee = 0,
    this.estimatedDeliveryDate,
  });
}

class ProofMedia {
  final String? id;
  final String? url;
  final String? altText;
  final String? mimeType;

  const ProofMedia({this.id, this.url, this.altText, this.mimeType});
}

class PaginatedReturnRequests {
  final List<ReturnRequest> items;
  final int totalCount;
  final int totalPages;

  const PaginatedReturnRequests({
    required this.items,
    required this.totalCount,
    required this.totalPages,
  });
}
