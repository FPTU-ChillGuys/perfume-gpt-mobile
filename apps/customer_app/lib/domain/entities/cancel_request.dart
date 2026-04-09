class CancelRequest {
  final String id;
  final String orderId;
  final String orderCode;
  final String? requestedById;
  final String? requestedByEmail;
  final String? processedById;
  final String reason;
  final String? staffNote;
  final String status; // Pending, Approved, Rejected
  final bool isRefundRequired;
  final double? refundAmount;
  final bool isRefunded;
  final String? refundBankName;
  final String? refundAccountName;
  final String? refundAccountNumber;
  final String? vnpTransactionNo;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const CancelRequest({
    required this.id,
    required this.orderId,
    required this.orderCode,
    this.requestedById,
    this.requestedByEmail,
    this.processedById,
    required this.reason,
    this.staffNote,
    required this.status,
    this.isRefundRequired = false,
    this.refundAmount,
    this.isRefunded = false,
    this.refundBankName,
    this.refundAccountName,
    this.refundAccountNumber,
    this.vnpTransactionNo,
    required this.createdAt,
    this.updatedAt,
  });
}

class PaginatedCancelRequests {
  final List<CancelRequest> items;
  final int totalCount;
  final int totalPages;

  const PaginatedCancelRequests({
    required this.items,
    required this.totalCount,
    required this.totalPages,
  });
}
