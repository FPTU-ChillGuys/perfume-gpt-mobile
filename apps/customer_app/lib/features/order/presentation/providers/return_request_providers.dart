import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/return_request_repository_impl.dart';
import '../../../../domain/entities/return_request.dart';
import '../../../../domain/repositories/return_request_repository.dart';

part 'return_request_providers.g.dart';

@riverpod
ReturnRequestRepository returnRequestRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ReturnRequestRepositoryImpl(apiClient.getOrderReturnRequestsApi());
}

@riverpod
class MyReturnRequests extends _$MyReturnRequests {
  @override
  FutureOr<List<ReturnRequest>> build() {
    return ref.watch(returnRequestRepositoryProvider).getMyRequests();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  Future<void> createRequest({required String orderId, String? reason}) async {
    await ref.read(returnRequestRepositoryProvider).create(orderId: orderId, reason: reason);
    ref.invalidateSelf();
  }

  Future<void> cancelRequest(String id) async {
    await ref.read(returnRequestRepositoryProvider).cancel(id);
    ref.invalidateSelf();
  }
}
