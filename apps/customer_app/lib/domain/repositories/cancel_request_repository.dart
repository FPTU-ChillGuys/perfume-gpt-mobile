import '../entities/cancel_request.dart';

abstract class CancelRequestRepository {
  Future<PaginatedCancelRequests> getMyRequests({
    String? status,
    int page = 1,
    int pageSize = 10,
  });
  Future<CancelRequest> getById(String id);
}
