# perfumegpt_api_client.api.InventoryApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiInventoryBatchesBatchIdGet**](InventoryApi.md#apiinventorybatchesbatchidget) | **GET** /api/inventory/batches/{batchId} | 
[**apiInventoryBatchesGet**](InventoryApi.md#apiinventorybatchesget) | **GET** /api/inventory/batches | 
[**apiInventoryBatchesVariantVariantIdGet**](InventoryApi.md#apiinventorybatchesvariantvariantidget) | **GET** /api/inventory/batches/variant/{variantId} | 
[**apiInventoryStockGet**](InventoryApi.md#apiinventorystockget) | **GET** /api/inventory/stock | 
[**apiInventoryStockVariantVariantIdGet**](InventoryApi.md#apiinventorystockvariantvariantidget) | **GET** /api/inventory/stock/variant/{variantId} | 
[**apiInventorySummaryGet**](InventoryApi.md#apiinventorysummaryget) | **GET** /api/inventory/summary | 


# **apiInventoryBatchesBatchIdGet**
> BaseResponseOfBatchDetailResponse apiInventoryBatchesBatchIdGet(batchId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
final String batchId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiInventoryBatchesBatchIdGet(batchId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryBatchesBatchIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**|  | 

### Return type

[**BaseResponseOfBatchDetailResponse**](BaseResponseOfBatchDetailResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiInventoryBatchesGet**
> BaseResponseOfPagedResultOfBatchDetailResponse apiInventoryBatchesGet(variantId, searchTerm, isExpired, isExpiringSoon, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
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
    final response = api.apiInventoryBatchesGet(variantId, searchTerm, isExpired, isExpiringSoon, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryBatchesGet: $e\n');
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

# **apiInventoryBatchesVariantVariantIdGet**
> BaseResponseOfListOfBatchDetailResponse apiInventoryBatchesVariantVariantIdGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiInventoryBatchesVariantVariantIdGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryBatchesVariantVariantIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfListOfBatchDetailResponse**](BaseResponseOfListOfBatchDetailResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiInventoryStockGet**
> BaseResponseOfPagedResultOfStockResponse apiInventoryStockGet(variantId, searchTerm, isLowStock, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String searchTerm = searchTerm_example; // String | 
final bool isLowStock = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiInventoryStockGet(variantId, searchTerm, isLowStock, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryStockGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | [optional] 
 **searchTerm** | **String**|  | [optional] 
 **isLowStock** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfStockResponse**](BaseResponseOfPagedResultOfStockResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiInventoryStockVariantVariantIdGet**
> BaseResponseOfStockResponse apiInventoryStockVariantVariantIdGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiInventoryStockVariantVariantIdGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryStockVariantVariantIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfStockResponse**](BaseResponseOfStockResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiInventorySummaryGet**
> BaseResponseOfInventorySummaryResponse apiInventorySummaryGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();

try {
    final response = api.apiInventorySummaryGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventorySummaryGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfInventorySummaryResponse**](BaseResponseOfInventorySummaryResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

