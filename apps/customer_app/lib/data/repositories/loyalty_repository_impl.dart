import 'package:dio/dio.dart';
import '../../domain/entities/loyalty.dart';
import '../../domain/repositories/loyalty_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class LoyaltyRepositoryImpl implements LoyaltyRepository {
  final Dio _dio;
  LoyaltyRepositoryImpl(this._dio);

  Options get _opts => Options(extra: _authExtra);

  @override
  Future<LoyaltyTotal> getTotal() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/loyaltytransactions/me/total', options: _opts);
    final j = r.data?['payload'] as Map<String, dynamic>? ?? {};
    return LoyaltyTotal(
      totalPoints: j['totalPoints'] as int? ?? 0,
      earnedPoints: j['earnedPoints'] as int? ?? 0,
      redeemedPoints: j['redeemedPoints'] as int? ?? 0,
    );
  }

  @override
  Future<List<LoyaltyTransaction>> getHistory() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/loyaltytransactions/me/history', options: _opts);
    final payload = r.data?['payload'];
    List<Map<String, dynamic>> list = [];
    if (payload is List) {
      list = payload.cast<Map<String, dynamic>>();
    } else if (payload is Map<String, dynamic>) {
      final items = payload['items'] as List?;
      if (items != null) list = items.cast<Map<String, dynamic>>();
    }
    return list.map((j) => LoyaltyTransaction(
          id: j['id'] as String? ?? '',
          points: j['points'] as int? ?? 0,
          type: j['type'] as String? ?? '',
          description: j['description'] as String?,
          createdAt: DateTime.tryParse(j['createdAt'] as String? ?? '') ?? DateTime.now(),
        )).toList();
  }
}
