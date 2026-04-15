# perfumegpt_api_client.api.PoliciesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPoliciesPolicyCodeGet**](PoliciesApi.md#apipoliciespolicycodeget) | **GET** /api/policies/{policyCode} | 
[**apiPoliciesPolicyCodePut**](PoliciesApi.md#apipoliciespolicycodeput) | **PUT** /api/policies/{policyCode} | 


# **apiPoliciesPolicyCodeGet**
> BaseResponseOfSystemPolicyResponse apiPoliciesPolicyCodeGet(policyCode)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPoliciesApi();
final String policyCode = policyCode_example; // String | 

try {
    final response = api.apiPoliciesPolicyCodeGet(policyCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PoliciesApi->apiPoliciesPolicyCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyCode** | **String**|  | 

### Return type

[**BaseResponseOfSystemPolicyResponse**](BaseResponseOfSystemPolicyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPoliciesPolicyCodePut**
> BaseResponseOfSystemPolicyResponse apiPoliciesPolicyCodePut(policyCode, systemPolicyUpdateRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPoliciesApi();
final String policyCode = policyCode_example; // String | 
final SystemPolicyUpdateRequest systemPolicyUpdateRequest = ; // SystemPolicyUpdateRequest | 

try {
    final response = api.apiPoliciesPolicyCodePut(policyCode, systemPolicyUpdateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PoliciesApi->apiPoliciesPolicyCodePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyCode** | **String**|  | 
 **systemPolicyUpdateRequest** | [**SystemPolicyUpdateRequest**](SystemPolicyUpdateRequest.md)|  | 

### Return type

[**BaseResponseOfSystemPolicyResponse**](BaseResponseOfSystemPolicyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

