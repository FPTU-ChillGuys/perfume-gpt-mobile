import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/cancel_request.dart';
import '../../domain/repositories/cancel_request_repository.dart';

class CancelRequestRepositoryImpl implements CancelRequestRepository {
  final OrderCancelRequestsApi _api;
  CancelRequestRepositoryImpl(this._api);

  @override
  Future<PaginatedCancelRequests> getMyRequests({
    String? status,
    int page = 1,
    int pageSize = 10,
  }) async {
    CancelRequestStatus? statusEnum;
    if (status != null) {
      statusEnum = CancelRequestStatus.values
          .cast<CancelRequestStatus?>()
          .firstWhere((e) => e!.value == status, orElse: () => null);
    }

    final response = await _api.apiOrdercancelrequestsMyRequestsGet(
      status: statusEnum,
      pageNumber: page,
      pageSize: pageSize,
      sortBy: 'CreatedAt',
      isDescending: true,
    );
    final paged = response.data?.payload;
    final items = paged?.items ?? [];
    final mapped = items.map(_map).toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return PaginatedCancelRequests(
      items: mapped,
      totalCount: paged?.totalCount ?? 0,
      totalPages: paged?.totalPages ?? 1,
    );
  }

  @override
  Future<CancelRequest> getById(String id) async {
    debugPrint('[CancelRequestRepo] getById called with id: "$id"');
    try {
      final response = await _api.apiOrdercancelrequestsIdGet(id: id);
      final payload = response.data?.payload;
      if (payload != null) return _map(payload);
      debugPrint(
        '[CancelRequestRepo] getById: payload is null for cancel request $id',
      );
      throw Exception('API returned null payload for cancel request $id');
    } catch (e) {
      debugPrint('[CancelRequestRepo] getById unexpected error: $e');
      rethrow;
    }
  }

  CancelRequest _map(OrderCancelRequestResponse j) {
    return CancelRequest(
      id: j.id?.toString() ?? '',
      orderId: j.orderId?.toString() ?? '',
      orderCode: j.orderCode,
      requestedById: j.requestedById,
      requestedByEmail: j.requestedByEmail,
      processedById: j.processedById,
      reason: j.reason,
      staffNote: j.staffNote,
      status: j.status?.value ?? 'Pending',
      isRefundRequired: j.isRefundRequired ?? false,
      refundAmount: j.refundAmount?.toDouble(),
      isRefunded: j.isRefunded ?? false,
      refundBankName: j.refundBankName,
      refundAccountName: j.refundAccountName,
      refundAccountNumber: j.refundAccountNumber,
      vnpTransactionNo: j.vnpTransactionNo,
      createdAt: j.createdAt ?? DateTime.now(),
      updatedAt: j.updatedAt,
    );
  }
}
