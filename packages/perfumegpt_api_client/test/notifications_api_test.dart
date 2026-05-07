import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for NotificationsApi
void main() {
  final instance = PerfumegptApiClient().getNotificationsApi();

  group(NotificationsApi, () {
    //Future<BaseResponseOfPagedResultOfNotificationListItemResponse> apiNotificationsGet({ String userId, String targetRole, bool isRead, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiNotificationsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiNotificationsIdReadPatch(String id) async
    test('test apiNotificationsIdReadPatch', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiNotificationsReadAllPatch() async
    test('test apiNotificationsReadAllPatch', () async {
      // TODO
    });
  });
}
