import '../entities/return_request.dart';

abstract class ReturnRequestRepository {
  Future<List<ReturnRequest>> getMyRequests();
  Future<ReturnRequest> getById(String id);
  Future<void> create({required String orderId, String? reason});
  Future<void> cancel(String id);
}
