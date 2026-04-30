# perfumegpt_api_client.api.StorePoliciesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiStorepoliciesCurrentGet**](StorePoliciesApi.md#apistorepoliciescurrentget) | **GET** /api/storepolicies/current | 
[**apiStorepoliciesCurrentPut**](StorePoliciesApi.md#apistorepoliciescurrentput) | **PUT** /api/storepolicies/current | 


# **apiStorepoliciesCurrentGet**
> BaseResponseOfStorePolicyResponse apiStorepoliciesCurrentGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getStorePoliciesApi();

try {
    final response = api.apiStorepoliciesCurrentGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling StorePoliciesApi->apiStorepoliciesCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfStorePolicyResponse**](BaseResponseOfStorePolicyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiStorepoliciesCurrentPut**
> BaseResponseOfStorePolicyResponse apiStorepoliciesCurrentPut(updateStorePolicyRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getStorePoliciesApi();
final UpdateStorePolicyRequest updateStorePolicyRequest = ; // UpdateStorePolicyRequest | 

try {
    final response = api.apiStorepoliciesCurrentPut(updateStorePolicyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StorePoliciesApi->apiStorepoliciesCurrentPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateStorePolicyRequest** | [**UpdateStorePolicyRequest**](UpdateStorePolicyRequest.md)|  | 

### Return type

[**BaseResponseOfStorePolicyResponse**](BaseResponseOfStorePolicyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

