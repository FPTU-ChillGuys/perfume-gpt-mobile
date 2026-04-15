# perfumegpt_api_client.api.AIApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aIControllerSearchProductWithAI**](AIApi.md#aicontrollersearchproductwithai) | **POST** /ai/search | Tìm kiếm sản phẩm bằng AI


# **aIControllerSearchProductWithAI**
> EmailControllerSendEmail200Response aIControllerSearchProductWithAI(prompt)

Tìm kiếm sản phẩm bằng AI

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIApi();
final String prompt = prompt_example; // String | Nội dung yêu cầu tìm kiếm

try {
    final response = api.aIControllerSearchProductWithAI(prompt);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIApi->aIControllerSearchProductWithAI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompt** | **String**| Nội dung yêu cầu tìm kiếm | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

