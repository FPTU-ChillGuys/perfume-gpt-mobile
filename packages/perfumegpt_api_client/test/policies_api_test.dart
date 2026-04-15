import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for PoliciesApi
void main() {
  final instance = PerfumegptApiClient().getPoliciesApi();

  group(PoliciesApi, () {
    //Future<BaseResponseOfSystemPolicyResponse> apiPoliciesPolicyCodeGet(String policyCode) async
    test('test apiPoliciesPolicyCodeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfSystemPolicyResponse> apiPoliciesPolicyCodePut(String policyCode, SystemPolicyUpdateRequest systemPolicyUpdateRequest) async
    test('test apiPoliciesPolicyCodePut', () async {
      // TODO
    });

  });
}
