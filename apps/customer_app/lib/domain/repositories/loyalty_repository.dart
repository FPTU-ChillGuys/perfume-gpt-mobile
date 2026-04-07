import '../entities/loyalty.dart';

abstract class LoyaltyRepository {
  Future<LoyaltyTotal> getTotal();
  Future<List<LoyaltyTransaction>> getHistory();
}
