import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/return_request.dart';
import '../../domain/repositories/return_request_repository.dart';

class ReturnRequestRepositoryImpl implements ReturnRequestRepository {
  final OrderReturnRequestsApi _api;
  ReturnRequestRepositoryImpl(this._api);

  @override
  Future<List<ReturnRequest>> getMyRequests() async {
    final response = await _api.apiOrderreturnrequestsMyRequestsGet();
    final items = response.data?.payload?.items ?? [];
    return items.map(_map).toList();
  }

  @override
  Future<ReturnRequest> getById(String id) async {
    final response = await _api.apiOrderreturnrequestsIdGet(id: id);
    return _map(response.data!.payload!);
  }

  @override
  Future<void> create({required String orderId, String? reason}) async {
    // Mapping string reason to enum, default to changedMind if not found or null
    ReturnOrderReason returnReason = ReturnOrderReason.changedMind;
    if (reason != null) {
      returnReason = ReturnOrderReason.values.firstWhere(
        (e) => e.name.toLowerCase() == reason.toLowerCase(),
        orElse: () => ReturnOrderReason.changedMind,
      );
    }

    await _api.apiOrderreturnrequestsPost(
      createReturnRequestDto: CreateReturnRequestDto(
        orderId: orderId,
        reason: returnReason,
        returnItems: [], // FIXME: Needs actual items from UI
      ),
    );
  }

  @override
  Future<void> cancel(String id) async {
    await _api.apiOrderreturnrequestsIdCancelPost(id: id);
  }

  ReturnRequest _map(OrderReturnRequestResponse j) => ReturnRequest(
        id: j.id?.toString() ?? '',
        orderId: j.orderId?.toString() ?? '',
        orderCode: j.orderCode,
        status: j.status?.name ?? 'Pending',
        reason: j.reason,
        createdAt: j.createdAt ?? DateTime.now(),
        updatedAt: j.updatedAt,
      );
}
