import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/return_request.dart';
import '../../domain/repositories/return_request_repository.dart';

class ReturnRequestRepositoryImpl implements ReturnRequestRepository {
  final OrderReturnRequestsApi _api;
  final ShippingsApi _shippingsApi;
  ReturnRequestRepositoryImpl(this._api, this._shippingsApi);

  @override
  Future<PaginatedReturnRequests> getMyRequests({
    String? status,
    int page = 1,
    int pageSize = 10,
  }) async {
    ReturnRequestStatus? statusEnum;
    if (status != null) {
      statusEnum = ReturnRequestStatus.values.cast<ReturnRequestStatus?>().firstWhere(
        (e) => e!.value == status,
        orElse: () => null,
      );
    }

    try {
      final response = await _api.apiOrderreturnrequestsMyRequestsGet(
        status: statusEnum,
        pageNumber: page,
        pageSize: pageSize,
        sortBy: 'CreatedAt',
        isDescending: true,
      );
      final paged = response.data?.payload;
      final items = paged?.items ?? [];
      return PaginatedReturnRequests(
        items: items.map(_map).toList(),
        totalCount: paged?.totalCount ?? 0,
        totalPages: paged?.totalPages ?? 1,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 200) {
        final raw = e.response?.data;
        if (raw is Map<String, dynamic>) {
          final payload = raw['payload'] as Map<String, dynamic>?;
          final rawItems = (payload?['items'] as List?)?.cast<Map<String, dynamic>>() ?? [];
          return PaginatedReturnRequests(
            items: rawItems.map(_mapRaw).toList(),
            totalCount: payload?['totalCount'] ?? 0,
            totalPages: payload?['totalPages'] ?? 1,
          );
        }
      }
      rethrow;
    }
  }

  @override
  Future<ReturnRequest> getById(String id) async {
    try {
      final response = await _api.apiOrderreturnrequestsIdGet(id: id);
      return _map(response.data!.payload!);
    } on DioException catch (e) {
      if (e.response?.statusCode == 200) {
        final raw = e.response?.data;
        if (raw is Map<String, dynamic>) {
          final payload = raw['payload'] as Map<String, dynamic>?;
          if (payload != null) return _mapRaw(payload);
        }
      }
      rethrow;
    }
  }

  @override
  Future<void> cancel(String id) async {
    await _api.apiOrderreturnrequestsIdCancelPost(id: id);
  }

  @override
  Future<void> update({
    required String id,
    String? customerNote,
    List<String>? temporaryMediaIds,
    List<String>? removeMediaIds,
  }) async {
    await _api.apiOrderreturnrequestsIdPut(
      id: id,
      updateReturnRequestDto: UpdateReturnRequestDto(
        customerNote: customerNote,
        temporaryMediaIds: temporaryMediaIds,
        removeMediaIds: removeMediaIds,
      ),
    );
  }

  @override
  Future<List<String>> uploadTemporaryMedia({
    List<({String filename, Uint8List bytes})>? images,
    List<({String filename, Uint8List bytes})>? videos,
  }) async {
    final imageFiles = images?.map((img) {
      final ext = img.filename.split('.').last.toLowerCase();
      return MultipartFile.fromBytes(img.bytes, filename: img.filename,
          contentType: MediaType('image', ext == 'png' ? 'png' : 'jpeg'));
    }).toList();

    final videoFiles = videos?.map((vid) {
      return MultipartFile.fromBytes(vid.bytes, filename: vid.filename,
          contentType: MediaType('video', 'mp4'));
    }).toList();

    try {
      final response = await _api.apiOrderreturnrequestsVideosTemporaryPost(
        images: imageFiles,
        videos: videoFiles,
      );
      final data = response.data?.payload?.data ?? [];
      return data.map((m) => m.id ?? '').where((id) => id.isNotEmpty).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 200) {
        final raw = e.response?.data;
        if (raw is Map<String, dynamic>) {
          final payload = raw['payload'] as Map<String, dynamic>?;
          final data = (payload?['data'] as List?)?.cast<Map<String, dynamic>>() ?? [];
          return data.map((m) => (m['id'] ?? '') as String).where((id) => id.isNotEmpty).toList();
        }
      }
      rethrow;
    }
  }

  @override
  Future<void> syncShippingStatus() async {
    await _shippingsApi.apiShippingsMeSyncShippingStatusPost();
  }

  ReturnRequest _map(OrderReturnRequestResponse j) => ReturnRequest(
        id: j.id?.toString() ?? '',
        orderId: j.orderId?.toString() ?? '',
        orderCode: j.orderCode,
        status: j.status?.value ?? 'Pending',
        reason: j.reason,
        customerNote: j.customerNote,
        staffNote: j.staffNote,
        inspectionNote: j.inspectionNote,
        requestedRefundAmount: (j.requestedRefundAmount ?? 0).toDouble(),
        approvedRefundAmount: j.approvedRefundAmount?.toDouble(),
        requestedByEmail: j.customerEmail,
        processedByName: j.processedByName,
        inspectedByName: j.inspectedByName,
        returnShippingInfo: j.returnShippingInfo != null
            ? ReturnShippingInfo(
                carrierName: j.returnShippingInfo!.carrierName?.value,
                trackingNumber: j.returnShippingInfo!.trackingNumber,
                status: j.returnShippingInfo!.status?.value,
                shippingFee: (j.returnShippingInfo!.shippingFee ?? 0).toDouble(),
              )
            : null,
        returnDetails: (j.returnDetails ?? []).map((d) => ReturnDetail(
              id: d.id,
              orderDetailId: d.orderDetailId,
              variantId: d.variantId,
              requestedQuantity: d.requestedQuantity ?? 0,
              unitPrice: (d.unitPrice ?? 0).toDouble(),
              refundableAmount: (d.refundableAmount ?? 0).toDouble(),
            )).toList(),
        proofImages: (j.proofImages ?? []).map((m) => ProofMedia(
              id: m.id,
              url: m.url,
              altText: m.altText,
              mimeType: m.mimeType,
            )).toList(),
        createdAt: j.createdAt ?? DateTime.now(),
        updatedAt: j.updatedAt,
      );

  ReturnRequest _mapRaw(Map<String, dynamic> j) => ReturnRequest(
        id: (j['id'] ?? '').toString(),
        orderId: (j['orderId'] ?? '').toString(),
        orderCode: j['orderCode']?.toString(),
        status: j['status']?.toString() ?? 'Pending',
        reason: j['reason']?.toString(),
        customerNote: j['customerNote']?.toString(),
        staffNote: j['staffNote']?.toString(),
        inspectionNote: j['inspectionNote']?.toString(),
        requestedRefundAmount: (j['requestedRefundAmount'] ?? 0).toDouble(),
        approvedRefundAmount: j['approvedRefundAmount'] != null
            ? (j['approvedRefundAmount']).toDouble()
            : null,
        requestedByEmail: j['customerEmail']?.toString(),
        processedByName: j['processedByName']?.toString(),
        inspectedByName: j['inspectedByName']?.toString(),
        returnShippingInfo: j['returnShippingInfo'] != null
            ? ReturnShippingInfo(
                carrierName: (j['returnShippingInfo'] as Map<String, dynamic>)['carrierName']?.toString(),
                trackingNumber: (j['returnShippingInfo'] as Map<String, dynamic>)['trackingNumber']?.toString(),
                status: (j['returnShippingInfo'] as Map<String, dynamic>)['status']?.toString(),
                shippingFee: ((j['returnShippingInfo'] as Map<String, dynamic>)['shippingFee'] ?? 0).toDouble(),
              )
            : null,
        returnDetails: ((j['returnDetails'] as List?) ?? []).map((d) {
          final dm = d as Map<String, dynamic>;
          return ReturnDetail(
            id: dm['id']?.toString(),
            orderDetailId: dm['orderDetailId']?.toString(),
            variantId: dm['variantId']?.toString(),
            requestedQuantity: (dm['requestedQuantity'] ?? 0) as int,
            unitPrice: (dm['unitPrice'] ?? 0).toDouble(),
            refundableAmount: (dm['refundableAmount'] ?? 0).toDouble(),
          );
        }).toList(),
        proofImages: ((j['proofImages'] as List?) ?? []).map((m) {
          final mm = m as Map<String, dynamic>;
          return ProofMedia(
            id: mm['id']?.toString(),
            url: mm['url']?.toString(),
            altText: mm['altText']?.toString(),
            mimeType: mm['mimeType']?.toString(),
          );
        }).toList(),
        createdAt: DateTime.tryParse(j['createdAt']?.toString() ?? '') ?? DateTime.now(),
        updatedAt: DateTime.tryParse(j['updatedAt']?.toString() ?? ''),
      );
}
