import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/loyalty_repository_impl.dart';
import '../../../../domain/entities/loyalty.dart';
import '../../../../domain/repositories/loyalty_repository.dart';

part 'loyalty_providers.g.dart';

@riverpod
LoyaltyRepository loyaltyRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return LoyaltyRepositoryImpl(apiClient.dio);
}

@riverpod
FutureOr<LoyaltyTotal> loyaltyTotal(Ref ref) {
  return ref.watch(loyaltyRepositoryProvider).getTotal();
}

@riverpod
FutureOr<List<LoyaltyTransaction>> loyaltyHistory(Ref ref) {
  return ref.watch(loyaltyRepositoryProvider).getHistory();
}
