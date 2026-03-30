# perfumegpt_api_client.api.BatchesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiBatchesGet**](BatchesApi.md#apibatchesget) | **GET** /api/batches | 
[**apiBatchesIdGet**](BatchesApi.md#apibatchesidget) | **GET** /api/batches/{id} | 
[**apiBatchesLookupGet**](BatchesApi.md#apibatcheslookupget) | **GET** /api/batches/lookup | 


# **apiBatchesGet**
> BaseResponseOfPagedResultOfBatchDetailResponse apiBatchesGet(variantId, searchTerm, isExpired, isExpiringSoon, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBatchesApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String searchTerm = searchTerm_example; // String | 
final bool isExpired = true; // bool | 
final bool isExpiringSoon = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiBatchesGet(variantId, searchTerm, isExpired, isExpiringSoon, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BatchesApi->apiBatchesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | [optional] 
 **searchTerm** | **String**|  | [optional] 
 **isExpired** | **bool**|  | [optional] 
 **isExpiringSoon** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfBatchDetailResponse**](BaseResponseOfPagedResultOfBatchDetailResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBatchesIdGet**
> BaseResponseOfBatchDetailResponse apiBatchesIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBatchesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiBatchesIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BatchesApi->apiBatchesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfBatchDetailResponse**](BaseResponseOfBatchDetailResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBatchesLookupGet**
> BaseResponseOfListOfBatchLookupResponse apiBatchesLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBatchesApi();

try {
    final response = api.apiBatchesLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling BatchesApi->apiBatchesLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfBatchLookupResponse**](BaseResponseOfListOfBatchLookupResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

