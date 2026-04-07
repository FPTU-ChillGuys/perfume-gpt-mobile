class ReturnRequest {
  final String id;
  final String orderId;
  final String? orderCode;
  final String status; // Pending, Approved, Rejected, InspectionStarted, InspectionCompleted, InspectionFailed, Refunded, Cancelled
  final String? reason;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const ReturnRequest({
    required this.id,
    required this.orderId,
    this.orderCode,
    required this.status,
    this.reason,
    required this.createdAt,
    this.updatedAt,
  });
}
