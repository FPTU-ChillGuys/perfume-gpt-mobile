import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/loyalty.dart';
import '../../domain/repositories/loyalty_repository.dart';

class LoyaltyRepositoryImpl implements LoyaltyRepository {
  final LoyaltyTransactionsApi _api;
  LoyaltyRepositoryImpl(this._api);

  @override
  Future<LoyaltyTotal> getTotal() async {
    final response = await _api.apiLoyaltytransactionsMeTotalGet();
    final j = response.data?.payload;
    return LoyaltyTotal(
      totalPoints: j?.pointBalance ?? 0,
      earnedPoints: j?.totalEarnedPoints ?? 0,
      redeemedPoints: j?.totalSpentPoints ?? 0,
    );
  }

  @override
  Future<List<LoyaltyTransaction>> getHistory() async {
    final response = await _api.apiLoyaltytransactionsMeHistoryGet();
    final list = response.data?.payload?.items ?? [];
    return list.map((j) => LoyaltyTransaction(
          id: j.id ?? '',
          points: j.pointsChanged ?? 0,
          type: j.transactionType?.name ?? '',
          description: j.reason,
          createdAt: DateTime.now(), // FIXME: API model missing createdAt
        )).toList();
  }
}
