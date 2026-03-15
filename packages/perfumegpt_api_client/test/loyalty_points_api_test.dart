import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for LoyaltyPointsApi
void main() {
  final instance = PerfumegptApiClient().getLoyaltyPointsApi();

  group(LoyaltyPointsApi, () {
    //Future<BaseResponseOfLoyaltyPointResponse> apiLoyaltypointsMeGet() async
    test('test apiLoyaltypointsMeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiLoyaltypointsUserIdPlusPost(String userId, PointsRequest pointsRequest) async
    test('test apiLoyaltypointsUserIdPlusPost', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiLoyaltypointsUserIdPost(String userId) async
    test('test apiLoyaltypointsUserIdPost', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiLoyaltypointsUserIdRedeemPost(String userId, PointsRequest pointsRequest) async
    test('test apiLoyaltypointsUserIdRedeemPost', () async {
      // TODO
    });

  });
}
