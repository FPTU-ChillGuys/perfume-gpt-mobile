import 'dart:typed_data';
import '../entities/return_request.dart';

typedef PendingUploadMedia = ({
  String filename,
  Uint8List? bytes,
  String? filePath,
});

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
    List<PendingUploadMedia>? images,
    List<PendingUploadMedia>? videos,
  });
  Future<void> syncShippingStatus();
  Future<String?> getOrderInfoUrl(String trackingNumber);
  Future<void> create({
    required String orderId,
    required String orderCode,
    required String reason,
    required List<({String orderDetailId, int quantity})> returnItems,
    String? customerNote,
    List<String>? temporaryMediaIds,
    bool? isRefundOnly,
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
    String? savedAddressId,
    ({
      String contactName,
      String contactPhoneNumber,
      String fullAddress,
      int? provinceId,
      String provinceName,
      int? districtId,
      String districtName,
      String wardCode,
      String wardName,
    })?
    recipient,
  });
}
