import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AdminDashboardApi
void main() {
  final instance = Openapi().getAdminDashboardApi();

  group(AdminDashboardApi, () {
    //Future<BaseResponseOfInventoryLevelsResponse> apiAdmindashboardInventoryLevelsGet({ int expiringWithinDays }) async
    test('test apiAdmindashboardInventoryLevelsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfAdminDashboardOverviewResponse> apiAdmindashboardOverviewGet({ int expiringWithinDays, int top, DateTime fromDate, DateTime toDate }) async
    test('test apiAdmindashboardOverviewGet', () async {
      // TODO
    });

    //Future<BaseResponseOfRevenueSummaryResponse> apiAdmindashboardRevenueGet({ DateTime fromDate, DateTime toDate }) async
    test('test apiAdmindashboardRevenueGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfTopProductResponse> apiAdmindashboardTopProductsGet({ int top, DateTime fromDate, DateTime toDate }) async
    test('test apiAdmindashboardTopProductsGet', () async {
      // TODO
    });

  });
}
