import 'dart:typed_data';
import '../entities/return_request.dart';

abstract class ReturnRequestRepository {
  Future<PaginatedReturnRequests> getMyRequests({
    String? status,
    int page = 1,
    int pageSize = 10,
  });
  Future<ReturnRequest> getById(String id);
  Future<void> cancel(String id);
  Future<void> update({
    required String id,
    String? customerNote,
    List<String>? temporaryMediaIds,
    List<String>? removeMediaIds,
  });
  Future<List<String>> uploadTemporaryMedia({
    List<({String filename, Uint8List bytes})>? images,
    List<({String filename, Uint8List bytes})>? videos,
  });
  Future<void> syncShippingStatus();
}
