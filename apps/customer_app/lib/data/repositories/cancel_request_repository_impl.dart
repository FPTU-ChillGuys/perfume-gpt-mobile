import 'dart:convert';

import 'package:dio/dio.dart' show DioException;
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

    try {
      final response = await _api.apiOrdercancelrequestsMyRequestsGet(
        status: statusEnum,
        pageNumber: page,
        pageSize: pageSize,
        sortBy: 'CreatedAt',
        isDescending: true,
      );
      return _mapGeneratedPaged(response.data?.payload);
    } on DioException catch (e) {
      final fallback = _tryMapRawPaged(e.response?.data);
      if (fallback != null) {
        debugPrint('[CancelRequestRepo] using raw fallback for my-requests');
        return fallback;
      }
      debugPrint('[CancelRequestRepo] getMyRequests error: ${e.response?.data ?? e}');
      rethrow;
    }
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
    } on DioException catch (e) {
      final fallback = _tryMapRawDetail(e.response?.data);
      if (fallback != null) return fallback;
      debugPrint(
        '[CancelRequestRepo] getById unexpected error: ${e.response?.data ?? e}',
      );
      rethrow;
    }
  }

  PaginatedCancelRequests _mapGeneratedPaged(
    PagedResultOfOrderCancelRequestResponse? paged,
  ) {
    final mapped = (paged?.items ?? []).map(_map).toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return PaginatedCancelRequests(
      items: mapped,
      totalCount: paged?.totalCount ?? mapped.length,
      totalPages: paged?.totalPages ?? 1,
    );
  }

  PaginatedCancelRequests? _tryMapRawPaged(Object? raw) {
    final root = _asMap(raw);
    if (root == null) return null;

    final payload = _asMap(root['payload']);
    if (payload == null) return null;

    final rawItems = payload['items'];
    final items = rawItems is List
        ? rawItems.whereType<Map>().map((e) => _mapRaw(e.cast())).toList()
        : <CancelRequest>[];
    items.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return PaginatedCancelRequests(
      items: items,
      totalCount: _asInt(payload['totalCount']) ?? items.length,
      totalPages: _asInt(payload['totalPages']) ?? 1,
    );
  }

  CancelRequest? _tryMapRawDetail(Object? raw) {
    final root = _asMap(raw);
    final payload = _asMap(root?['payload']);
    if (payload == null) return null;
    return _mapRaw(payload);
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

  CancelRequest _mapRaw(Map<String, dynamic> j) {
    final createdAt = _asDateTime(j['createdAt']) ?? DateTime.now();
    return CancelRequest(
      id: _asString(j['id']),
      orderId: _asString(j['orderId']),
      orderCode: _asString(j['orderCode'], fallback: 'N/A'),
      requestedById: _asNullableString(j['requestedById']),
      requestedByEmail: _asNullableString(j['requestedByEmail']),
      processedById: _asNullableString(j['processedById']),
      reason: _asString(j['reason'], fallback: 'Khác'),
      staffNote: _asNullableString(j['staffNote']),
      status: _asString(j['status'], fallback: 'Pending'),
      isRefundRequired: j['isRefundRequired'] == true,
      refundAmount: _asDouble(j['refundAmount']),
      isRefunded: j['isRefunded'] == true,
      refundBankName: _asNullableString(j['refundBankName']),
      refundAccountName: _asNullableString(j['refundAccountName']),
      refundAccountNumber: _asNullableString(j['refundAccountNumber']),
      vnpTransactionNo: _asNullableString(j['vnpTransactionNo']),
      createdAt: createdAt,
      updatedAt: _asDateTime(j['updatedAt']),
    );
  }

  Map<String, dynamic>? _asMap(Object? value) {
    if (value is Map<String, dynamic>) return value;
    if (value is Map) return value.cast<String, dynamic>();
    if (value is String && value.trim().isNotEmpty) {
      try {
        final decoded = jsonDecode(value);
        if (decoded is Map<String, dynamic>) return decoded;
        if (decoded is Map) return decoded.cast<String, dynamic>();
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  String _asString(Object? value, {String fallback = ''}) {
    final text = value?.toString().trim();
    return text == null || text.isEmpty ? fallback : text;
  }

  String? _asNullableString(Object? value) {
    final text = value?.toString().trim();
    return text == null || text.isEmpty ? null : text;
  }

  int? _asInt(Object? value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    return int.tryParse(value?.toString() ?? '');
  }

  double? _asDouble(Object? value) {
    if (value is num) return value.toDouble();
    return double.tryParse(value?.toString() ?? '');
  }

  DateTime? _asDateTime(Object? value) {
    if (value is DateTime) return value;
    final text = value?.toString();
    if (text == null || text.isEmpty) return null;
    return DateTime.tryParse(text);
  }
}
