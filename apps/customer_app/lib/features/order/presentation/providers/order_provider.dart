import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/order_repository_impl.dart';
import '../../../../domain/entities/order.dart';
import '../../../../domain/repositories/order_repository.dart';

part 'order_provider.g.dart';

@riverpod
OrderRepository orderRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return OrderRepositoryImpl(
    apiClient.getOrdersApi(),
    apiClient.getPaymentsApi(),
    apiClient.dio,
  );
}

@riverpod
FutureOr<PaginatedOrders> myOrders(
  Ref ref, {
  String? status,
  String? searchTerm,
  int page = 1,
  int pageSize = 10,
}) {
  return ref
      .read(orderRepositoryProvider)
      .getMyOrders(
        status: status,
        searchTerm: searchTerm,
        page: page,
        pageSize: pageSize,
      );
}

@riverpod
FutureOr<OrderDetail> orderDetail(Ref ref, String orderId) {
  return ref.read(orderRepositoryProvider).getOrderDetail(orderId);
}

@riverpod
FutureOr<Invoice> orderInvoice(Ref ref, String orderId) {
  return ref.read(orderRepositoryProvider).getInvoice(orderId);
}
