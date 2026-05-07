import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for StorePoliciesApi
void main() {
  final instance = PerfumegptApiClient().getStorePoliciesApi();

  group(StorePoliciesApi, () {
    //Future<BaseResponseOfStorePolicyResponse> apiStorepoliciesCurrentGet() async
    test('test apiStorepoliciesCurrentGet', () async {
      // TODO
    });

    //Future<BaseResponseOfStorePolicyResponse> apiStorepoliciesCurrentPut(UpdateStorePolicyRequest updateStorePolicyRequest) async
    test('test apiStorepoliciesCurrentPut', () async {
      // TODO
    });
  });
}
