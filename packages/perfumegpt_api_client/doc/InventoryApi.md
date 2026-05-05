# perfumegpt_api_client.api.InventoryApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiInventoryStockGet**](InventoryApi.md#apiinventorystockget) | **GET** /api/inventory/stock | 
[**apiInventoryStockStockIdPut**](InventoryApi.md#apiinventorystockstockidput) | **PUT** /api/inventory/stock/{stockId} | 
[**apiInventorySummaryGet**](InventoryApi.md#apiinventorysummaryget) | **GET** /api/inventory/summary | 


# **apiInventoryStockGet**
> BaseResponseOfPagedResultOfStockResponse apiInventoryStockGet(categoryId, batchCode, SKU, daysUntilExpiry, stockStatus, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
final int categoryId = 56; // int | 
final String batchCode = batchCode_example; // String | 
final String SKU = SKU_example; // String | 
final int daysUntilExpiry = 56; // int | 
final StockStatus stockStatus = ; // StockStatus | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiInventoryStockGet(categoryId, batchCode, SKU, daysUntilExpiry, stockStatus, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryStockGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**|  | [optional] 
 **batchCode** | **String**|  | [optional] 
 **SKU** | **String**|  | [optional] 
 **daysUntilExpiry** | **int**|  | [optional] 
 **stockStatus** | [**StockStatus**](.md)|  | [optional] 
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

# **apiInventoryStockStockIdPut**
> BaseResponseOfstring apiInventoryStockStockIdPut(stockId, updateStockRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getInventoryApi();
final String stockId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateStockRequest updateStockRequest = ; // UpdateStockRequest | 

try {
    final response = api.apiInventoryStockStockIdPut(stockId, updateStockRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->apiInventoryStockStockIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockId** | **String**|  | 
 **updateStockRequest** | [**UpdateStockRequest**](UpdateStockRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
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

