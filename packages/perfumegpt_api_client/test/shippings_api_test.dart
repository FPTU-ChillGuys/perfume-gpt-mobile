import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for ShippingsApi
void main() {
  final instance = PerfumegptApiClient().getShippingsApi();

  group(ShippingsApi, () {
    //Future<BaseResponseOfCalculateFeeResponse> apiShippingsCalculateFeePost(CalculateFeeRequest calculateFeeRequest) async
    test('test apiShippingsCalculateFeePost', () async {
      // TODO
    });
  });
}
