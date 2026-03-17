import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for BackgroundJobsApi
void main() {
  final instance = PerfumegptApiClient().getBackgroundJobsApi();

  group(BackgroundJobsApi, () {
    //Future apiBackgroundjobsCleanupTemporaryMediaPost() async
    test('test apiBackgroundjobsCleanupTemporaryMediaPost', () async {
      // TODO
    });

    //Future apiBackgroundjobsDashboardUrlGet() async
    test('test apiBackgroundjobsDashboardUrlGet', () async {
      // TODO
    });

    //Future apiBackgroundjobsProcessExpiredReservationsPost() async
    test('test apiBackgroundjobsProcessExpiredReservationsPost', () async {
      // TODO
    });

    //Future apiBackgroundjobsTriggerJobPost() async
    test('test apiBackgroundjobsTriggerJobPost', () async {
      // TODO
    });
  });
}
