import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/loyalty.dart';
import '../../domain/repositories/loyalty_repository.dart';

class LoyaltyRepositoryImpl implements LoyaltyRepository {
  final LoyaltyTransactionsApi _api;
  LoyaltyRepositoryImpl(this._api);

  static bool _isOk(DioException e) {
    final s = e.response?.statusCode;
    return s != null && s >= 200 && s < 300;
  }

  // ── Total ─────────────────────────────────────────────────────────────────

  @override
  Future<LoyaltyTotal> getTotal() async {
    try {
      final r = await _api.apiLoyaltytransactionsMeTotalGet();
      final p = r.data?.payload;
      if (p != null) return _mapTotal(p);
      return _parseTotalRaw(r.data);
    } on DioException catch (e) {
      if (_isOk(e)) return _parseTotalRaw(e.response?.data);
      rethrow;
    }
  }

  LoyaltyTotal _mapTotal(LoyaltyTransactionTotalsResponse p) {
    return LoyaltyTotal(
      totalPoints: p.pointBalance ?? 0,
      earnedPoints: p.totalEarnedPoints ?? 0,
      redeemedPoints: p.totalSpentPoints ?? 0,
    );
  }

  LoyaltyTotal _parseTotalRaw(dynamic data) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final j = (raw['payload'] as Map<String, dynamic>?) ?? {};
    return LoyaltyTotal(
      totalPoints: j['pointBalance'] as int? ?? 0,
      earnedPoints: j['totalEarnedPoints'] as int? ?? 0,
      redeemedPoints: j['totalSpentPoints'] as int? ?? 0,
    );
  }

  // ── History ───────────────────────────────────────────────────────────────

  @override
  Future<List<LoyaltyTransaction>> getHistory() async {
    try {
      final r = await _api.apiLoyaltytransactionsMeHistoryGet();
      final items = r.data?.payload?.items;
      if (items != null) return items.map(_mapTransaction).toList();
      return _parseHistoryRaw(r.data);
    } on DioException catch (e) {
      if (_isOk(e)) return _parseHistoryRaw(e.response?.data);
      rethrow;
    }
  }

  LoyaltyTransaction _mapTransaction(LoyaltyTransactionHistoryItemResponse t) {
    return LoyaltyTransaction(
      id: t.id ?? '',
      points: t.pointsChanged ?? 0,
      type: t.transactionType?.value ?? '',
      description: t.reason,
    );
  }

  List<LoyaltyTransaction> _parseHistoryRaw(dynamic data) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final payload = raw['payload'];
    List<Map<String, dynamic>> list = [];
    if (payload is List) {
      list = payload.cast<Map<String, dynamic>>();
    } else if (payload is Map<String, dynamic>) {
      final items = payload['items'] as List?;
      if (items != null) list = items.cast<Map<String, dynamic>>();
    }
    return list
        .map(
          (j) => LoyaltyTransaction(
            id: j['id'] as String? ?? '',
            points: j['pointsChanged'] as int? ?? 0,
            type: j['transactionType'] as String? ?? '',
            description: j['reason'] as String?,
          ),
        )
        .toList();
  }
}
