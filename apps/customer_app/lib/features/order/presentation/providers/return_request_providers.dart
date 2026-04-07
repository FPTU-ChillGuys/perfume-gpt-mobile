import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/return_request_repository_impl.dart';
import '../../../../domain/entities/return_request.dart';
import '../../../../domain/repositories/return_request_repository.dart';

part 'return_request_providers.g.dart';

@riverpod
ReturnRequestRepository returnRequestRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ReturnRequestRepositoryImpl(
    apiClient.getOrderReturnRequestsApi(),
    apiClient.getShippingsApi(),
  );
}

@riverpod
FutureOr<PaginatedReturnRequests> myReturnRequests(
  Ref ref, {
  String? status,
  int page = 1,
  int pageSize = 10,
}) {
  return ref.read(returnRequestRepositoryProvider).getMyRequests(
        status: status,
        page: page,
        pageSize: pageSize,
      );
}

@riverpod
FutureOr<ReturnRequest> returnRequestDetail(Ref ref, String id) {
  return ref.read(returnRequestRepositoryProvider).getById(id);
}
