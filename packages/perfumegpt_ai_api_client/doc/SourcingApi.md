# perfumegpt_ai_api_client.api.SourcingApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sourcingControllerGetCatalogs**](SourcingApi.md#sourcingcontrollergetcatalogs) | **GET** /sourcing/catalogs/{variantId} | Test get catalogs for a specific variant via Redis Pub/Sub


# **sourcingControllerGetCatalogs**
> BaseResponseAPI sourcingControllerGetCatalogs(variantId)

Test get catalogs for a specific variant via Redis Pub/Sub

Sends a catalog_request to the main backend and awaits a response.

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSourcingApi();
final String variantId = variantId_example; // String | 

try {
    final response = api.sourcingControllerGetCatalogs(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SourcingApi->sourcingControllerGetCatalogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseAPI**](BaseResponseAPI.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

