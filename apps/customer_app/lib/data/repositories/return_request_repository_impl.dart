import 'package:dio/dio.dart';
import '../../domain/entities/return_request.dart';
import '../../domain/repositories/return_request_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class ReturnRequestRepositoryImpl implements ReturnRequestRepository {
  final Dio _dio;
  ReturnRequestRepositoryImpl(this._dio);

  Options get _opts => Options(extra: _authExtra);

  @override
  Future<List<ReturnRequest>> getMyRequests() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/orderreturnrequests/my-requests', options: _opts);
    return _extractList(r.data).map(_map).toList();
  }

  @override
  Future<ReturnRequest> getById(String id) async {
    final r = await _dio.get<Map<String, dynamic>>('/api/orderreturnrequests/$id', options: _opts);
    return _map(r.data!['payload'] as Map<String, dynamic>);
  }

  @override
  Future<void> create({required String orderId, String? reason}) async {
    await _dio.post(
      '/api/orderreturnrequests',
      data: {
        'orderId': orderId,
        if (reason != null) 'reason': reason,
      },
      options: Options(contentType: 'application/json', extra: _authExtra),
    );
  }

  @override
  Future<void> cancel(String id) async {
    await _dio.post('/api/orderreturnrequests/$id/cancel', options: _opts);
  }

  List<Map<String, dynamic>> _extractList(Map<String, dynamic>? data) {
    final payload = data?['payload'];
    if (payload is List) return payload.cast<Map<String, dynamic>>();
    if (payload is Map<String, dynamic>) {
      final items = payload['items'] as List?;
      if (items != null) return items.cast<Map<String, dynamic>>();
    }
    return [];
  }

  ReturnRequest _map(Map<String, dynamic> j) => ReturnRequest(
        id: j['id'] as String? ?? '',
        orderId: j['orderId'] as String? ?? '',
        orderCode: j['orderCode'] as String?,
        status: j['status'] as String? ?? 'Pending',
        reason: j['reason'] as String?,
        createdAt: DateTime.tryParse(j['createdAt'] as String? ?? '') ?? DateTime.now(),
        updatedAt: j['updatedAt'] != null ? DateTime.tryParse(j['updatedAt'] as String) : null,
      );
}
