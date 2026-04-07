import 'package:dio/dio.dart';
import '../../domain/entities/voucher.dart';
import '../../domain/repositories/voucher_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class VoucherRepositoryImpl implements VoucherRepository {
  final Dio _dio;
  VoucherRepositoryImpl(this._dio);

  Options get _opts => Options(extra: _authExtra);

  @override
  Future<List<Voucher>> getAvailable() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/vouchers/available', options: _opts);
    return _extractList(r.data).map(_map).toList();
  }

  @override
  Future<List<Voucher>> getMyVouchers() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/vouchers/me', options: _opts);
    return _extractList(r.data).map(_map).toList();
  }

  @override
  Future<void> redeem(String voucherCode) async {
    await _dio.post(
      '/api/vouchers/redeem',
      data: {'voucherCode': voucherCode},
      options: Options(contentType: 'application/json', extra: _authExtra),
    );
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

  Voucher _map(Map<String, dynamic> j) => Voucher(
        id: j['id'] as String? ?? '',
        code: j['code'] as String? ?? '',
        description: j['description'] as String?,
        discountType: j['discountType'] as String? ?? 'Percentage',
        discountValue: (j['discountValue'] as num?)?.toDouble() ?? 0,
        minOrderValue: (j['minOrderValue'] as num?)?.toDouble(),
        maxDiscount: (j['maxDiscount'] as num?)?.toDouble(),
        startDate: j['startDate'] != null ? DateTime.tryParse(j['startDate'] as String) : null,
        endDate: j['endDate'] != null ? DateTime.tryParse(j['endDate'] as String) : null,
        usageLimit: j['usageLimit'] as int?,
        usedCount: j['usedCount'] as int?,
        isActive: j['isActive'] as bool? ?? true,
      );
}
