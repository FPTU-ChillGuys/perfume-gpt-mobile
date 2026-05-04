import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

part 'import_tickets_provider.g.dart';

@riverpod
Future<List<ImportTicketListItem>> importTickets(
  Ref ref, {
  ImportStatus? status,
}) async {
  final apiClient = ref.watch(apiClientProvider);

  final response = await apiClient.getImportTicketsApi().apiImportticketsGet(
        status: status,
        pageSize: 100, // Fetch a large number for now, or implement pagination later
        sortBy: 'ActualImportDate',
        sortOrder: 'desc',
      );

  if (response.data == null || response.data!.payload == null) {
    throw Exception('Failed to fetch import tickets');
  }

  return response.data!.payload!.items?.toList() ?? [];
}
