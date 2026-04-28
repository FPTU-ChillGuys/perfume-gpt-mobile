import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/cancel_request_repository_impl.dart';
import '../../../../domain/entities/cancel_request.dart';
import '../../../../domain/entities/order.dart';
import '../../../../domain/repositories/cancel_request_repository.dart';
import 'order_provider.dart';

part 'cancel_request_providers.g.dart';

@riverpod
CancelRequestRepository cancelRequestRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return CancelRequestRepositoryImpl(apiClient.getOrderCancelRequestsApi());
}

@riverpod
FutureOr<PaginatedCancelRequests> myCancelRequests(
  Ref ref, {
  String? status,
  int page = 1,
  int pageSize = 10,
}) {
  return ref
      .read(cancelRequestRepositoryProvider)
      .getMyRequests(status: status, page: page, pageSize: pageSize);
}

@riverpod
FutureOr<CancelRequest> cancelRequestDetail(Ref ref, String id) {
  return ref.read(cancelRequestRepositoryProvider).getById(id);
}

@riverpod
FutureOr<(CancelRequest, OrderDetail?)> cancelRequestWithOrder(
  Ref ref,
  String id,
) async {
  final request = await ref.watch(cancelRequestDetailProvider(id).future);
  if (request.orderId.isEmpty) return (request, null);
  try {
    final order = await ref.watch(orderDetailProvider(request.orderId).future);
    return (request, order);
  } catch (_) {
    return (request, null);
  }
}
