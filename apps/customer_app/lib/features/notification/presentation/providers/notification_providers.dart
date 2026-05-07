import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

final customerNotificationsProvider =
    FutureProvider<List<NotificationListItemResponse>>((ref) async {
      final user = ref.watch(authProvider).asData?.value;
      if (user == null) return const [];

      final api = ref.read(apiClientProvider).getNotificationsApi();
      final response = await api.apiNotificationsGet(
        userId: user.id,
        pageNumber: 1,
        pageSize: 50,
        sortBy: 'CreatedAt',
        sortOrder: 'desc',
        isDescending: true,
      );

      return response.data?.payload?.items ?? const [];
    });

final unreadNotificationsCountProvider = Provider<int>((ref) {
  final notifications = ref.watch(customerNotificationsProvider).asData?.value;
  if (notifications == null) return 0;
  return notifications.where((item) => item.isRead != true).length;
});

final notificationsApiProvider = Provider<NotificationsApi>((ref) {
  return ref.watch(apiClientProvider).getNotificationsApi();
});
