import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'return_request_providers.g.dart';

@riverpod
Future<PagedResultOfOrderReturnRequestResponse> staffReturnRequests(
  Ref ref, {
  ReturnRequestStatus? status,
  int pageNumber = 1,
  int pageSize = 10,
}) async {
  final apiClient = ref.watch(apiClientProvider);
  final response = await apiClient
      .getOrderReturnRequestsApi()
      .apiOrderreturnrequestsGet(
        status: status,
        pageNumber: pageNumber,
        pageSize: pageSize,
        sortBy: 'CreatedAt',
        sortOrder: 'desc',
        isDescending: true,
      );
  return response.data!.payload!;
}

@riverpod
Future<OrderReturnRequestResponse> staffReturnRequestDetail(
  Ref ref,
  String id,
) async {
  final apiClient = ref.watch(apiClientProvider);
  final response = await apiClient
      .getOrderReturnRequestsApi()
      .apiOrderreturnrequestsIdGet(id: id);
  return response.data!.payload!;
}
