import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
      statusEnum = ReturnRequestStatus.values
          .cast<ReturnRequestStatus?>()
          .firstWhere((e) => e!.value == status, orElse: () => null);
    }

    final response = await _api.apiOrderreturnrequestsMyRequestsGet(
      status: statusEnum,
      pageNumber: page,
      pageSize: pageSize,
      sortBy: 'CreatedAt',
      sortOrder: 'desc',
      isDescending: true,
    );
    final paged = response.data?.payload;
    final items = paged?.items ?? [];
    final mapped = items.map(_map).toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return PaginatedReturnRequests(
      items: mapped,
      totalCount: paged?.totalCount ?? 0,
      totalPages: paged?.totalPages ?? 1,
    );
  }

  @override
  Future<ReturnRequest> getById(String id) async {
    debugPrint('[ReturnRequestRepo] getById called with id: "$id"');
    try {
      final response = await _api.apiOrderreturnrequestsIdGet(id: id);
      final payload = response.data?.payload;
      if (payload != null) return _map(payload);
      debugPrint(
        '[ReturnRequestRepo] getById: typed payload is null for return request $id',
      );
      throw Exception('API returned null payload for return request $id');
    } catch (e) {
      debugPrint('[ReturnRequestRepo] getById unexpected error: $e');
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
    List<PendingUploadMedia>? images,
    List<PendingUploadMedia>? videos,
  }) async {
    final hasImages = images != null && images.isNotEmpty;
    final hasVideos = videos != null && videos.isNotEmpty;
    if (!hasImages && !hasVideos) return [];

    final imageParts = <MultipartFile>[];
    final videoParts = <MultipartFile>[];
    if (images != null) {
      for (final img in images) {
        imageParts.add(
          await _buildMultipartFile(img, MediaType('image', 'jpeg')),
        );
      }
    }
    if (videos != null) {
      for (final vid in videos) {
        videoParts.add(
          await _buildMultipartFile(vid, MediaType('video', 'mp4')),
        );
      }
    }
    final response = await _api.apiOrderreturnrequestsVideosTemporaryPost(
      images: imageParts.isEmpty ? null : imageParts,
      videos: videoParts.isEmpty ? null : videoParts,
    );
    final items = response.data?.payload?.data ?? [];
    return items
        .map<String>((m) => (m.id ?? '').toString())
        .where((id) => id.isNotEmpty)
        .toList();
  }

  Future<MultipartFile> _buildMultipartFile(
    PendingUploadMedia media,
    MediaType contentType,
  ) async {
    if (media.filePath != null && media.filePath!.isNotEmpty) {
      return MultipartFile.fromFile(
        media.filePath!,
        filename: media.filename,
        contentType: contentType,
      );
    }
    if (media.bytes != null) {
      return MultipartFile.fromBytes(
        media.bytes!,
        filename: media.filename,
        contentType: contentType,
      );
    }
    throw ArgumentError('Media must provide bytes or filePath');
  }

  @override
  Future<void> syncShippingStatus() async {
    await _shippingsApi.apiShippingsMeSyncShippingStatusPost();
  }

  @override
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
  }) async {
    final reasonEnum = ReturnOrderReason.values
        .cast<ReturnOrderReason?>()
        .firstWhere((e) => e!.value == reason, orElse: () => null);
    final dto = CreateReturnRequestDto(
      orderId: orderId,
      reason: reasonEnum ?? ReturnOrderReason.damagedProduct,
      returnItems: returnItems
          .map(
            (i) => ReturnItemDto(
              orderDetailId: i.orderDetailId,
              quantity: i.quantity,
            ),
          )
          .toList(),
      customerNote: customerNote,
      temporaryMediaIds: temporaryMediaIds,
      isRefundOnly: isRefundOnly,
      refundBankName: refundBankName,
      refundAccountNumber: refundAccountNumber,
      refundAccountName: refundAccountName,
      savedAddressId: savedAddressId,
      recipient: recipient != null
          ? ContactAddressInformation(
              contactName: recipient.contactName,
              contactPhoneNumber: recipient.contactPhoneNumber,
              fullAddress: recipient.fullAddress,
              provinceId: recipient.provinceId,
              provinceName: recipient.provinceName,
              districtId: recipient.districtId,
              districtName: recipient.districtName,
              wardCode: recipient.wardCode,
              wardName: recipient.wardName,
            )
          : null,
    );
    final body = <String, dynamic>{
      ...dto.toJson(),
      'orderCode': orderCode,
    };
    debugPrint('[ReturnRequestRepo] create DTO JSON: $body');
    try {
      await _api.apiOrderreturnrequestsPost(createReturnRequestDto: dto);
    } on DioException catch (e) {
      debugPrint(
        '[ReturnRequestRepo] create error status: ${e.response?.statusCode}',
      );
      debugPrint('[ReturnRequestRepo] create error body: ${e.response?.data}');
      rethrow;
    }
  }

  @override
  Future<String?> getOrderInfoUrl(String trackingNumber) async {
    final response = await _shippingsApi.apiShippingsOrderInfoUrlPost(
      getOrderInfoRequest: GetOrderInfoRequest(
        trackingNumbers: [trackingNumber],
      ),
    );
    return response.data?.payload;
  }

  ReturnRequest _map(OrderReturnRequestResponse j) {
    debugPrint(
      '[ReturnRequestRepo] _map id=${j.id}, orderId=${j.orderId}, orderCode=${j.orderCode}',
    );
    return ReturnRequest(
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
      refundableAmount: null,
      requestedByEmail: j.customerEmail,
      customerId: j.customerId,
      processedByName: j.processedByName,
      inspectedByName: j.inspectedByName,
      returnShippingInfo: j.returnShippingInfo != null
          ? ReturnShippingInfo(
              carrierName: j.returnShippingInfo!.carrierName?.value,
              trackingNumber: j.returnShippingInfo!.trackingNumber,
              status: j.returnShippingInfo!.status?.value,
              shippingFee: (j.returnShippingInfo!.shippingFee ?? 0).toDouble(),
              estimatedDeliveryDate:
                  j.returnShippingInfo!.estimatedDeliveryDate,
            )
          : null,
      returnDetails: (j.returnDetails ?? [])
          .map(
            (d) => ReturnDetail(
              id: d.id,
              orderDetailId: d.orderDetailId,
              variantId: d.variantId,
              requestedQuantity: d.requestedQuantity ?? 0,
              unitPrice: (d.unitPrice ?? 0).toDouble(),
              refundableAmount: (d.refundableAmount ?? 0).toDouble(),
            ),
          )
          .toList(),
      proofImages: (j.proofImages ?? [])
          .map(
            (m) => ProofMedia(
              id: m.id,
              url: m.url,
              altText: m.altText,
              mimeType: m.mimeType,
            ),
          )
          .toList(),
      createdAt: j.createdAt ?? DateTime.now(),
      updatedAt: j.updatedAt,
      refundBankName: j.refundBankName,
      refundAccountNumber: j.refundAccountNumber,
      refundAccountName: j.refundAccountName,
      isRestocked: j.isRestocked,
    );
  }
}
