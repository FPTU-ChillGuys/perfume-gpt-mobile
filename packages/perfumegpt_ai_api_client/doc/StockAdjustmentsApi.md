# perfumegpt_ai_api_client.api.StockAdjustmentsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiStockadjustmentsAdjustmentIdVerifyPost**](StockAdjustmentsApi.md#apistockadjustmentsadjustmentidverifypost) | **POST** /api/stockadjustments/{adjustmentId}/verify | 
[**apiStockadjustmentsGet**](StockAdjustmentsApi.md#apistockadjustmentsget) | **GET** /api/stockadjustments | 
[**apiStockadjustmentsIdDelete**](StockAdjustmentsApi.md#apistockadjustmentsiddelete) | **DELETE** /api/stockadjustments/{id} | 
[**apiStockadjustmentsIdGet**](StockAdjustmentsApi.md#apistockadjustmentsidget) | **GET** /api/stockadjustments/{id} | 
[**apiStockadjustmentsIdStatusPut**](StockAdjustmentsApi.md#apistockadjustmentsidstatusput) | **PUT** /api/stockadjustments/{id}/status | 
[**apiStockadjustmentsPost**](StockAdjustmentsApi.md#apistockadjustmentspost) | **POST** /api/stockadjustments | 


# **apiStockadjustmentsAdjustmentIdVerifyPost**
> BaseResponseOfstring apiStockadjustmentsAdjustmentIdVerifyPost(adjustmentId, verifyStockAdjustmentRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getStockAdjustmentsApi();
final String adjustmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final VerifyStockAdjustmentRequest verifyStockAdjustmentRequest = ; // VerifyStockAdjustmentRequest | 

try {
    final response = api.apiStockadjustmentsAdjustmentIdVerifyPost(adjustmentId, verifyStockAdjustmentRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StockAdjustmentsApi->apiStockadjustmentsAdjustmentIdVerifyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adjustmentId** | **String**|  | 
 **verifyStockAdjustmentRequest** | [**VerifyStockAdjustmentRequest**](VerifyStockAdjustmentRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiStockadjustmentsGet**
> BaseResponseOfPagedResultOfStockAdjustmentListItem apiStockadjustmentsGet(reason, status, fromDate, toDate, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getStockAdjustmentsApi();
final StockAdjustmentReason reason = ; // StockAdjustmentReason | 
final StockAdjustmentStatus status = ; // StockAdjustmentStatus | 
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiStockadjustmentsGet(reason, status, fromDate, toDate, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StockAdjustmentsApi->apiStockadjustmentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reason** | [**StockAdjustmentReason**](.md)|  | [optional] 
 **status** | [**StockAdjustmentStatus**](.md)|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfStockAdjustmentListItem**](BaseResponseOfPagedResultOfStockAdjustmentListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiStockadjustmentsIdDelete**
> BaseResponseOfboolean apiStockadjustmentsIdDelete(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getStockAdjustmentsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiStockadjustmentsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StockAdjustmentsApi->apiStockadjustmentsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiStockadjustmentsIdGet**
> BaseResponseOfStockAdjustmentResponse apiStockadjustmentsIdGet(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getStockAdjustmentsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiStockadjustmentsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StockAdjustmentsApi->apiStockadjustmentsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfStockAdjustmentResponse**](BaseResponseOfStockAdjustmentResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiStockadjustmentsIdStatusPut**
> BaseResponseOfstring apiStockadjustmentsIdStatusPut(id, updateStockAdjustmentStatusRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getStockAdjustmentsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateStockAdjustmentStatusRequest updateStockAdjustmentStatusRequest = ; // UpdateStockAdjustmentStatusRequest | 

try {
    final response = api.apiStockadjustmentsIdStatusPut(id, updateStockAdjustmentStatusRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StockAdjustmentsApi->apiStockadjustmentsIdStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateStockAdjustmentStatusRequest** | [**UpdateStockAdjustmentStatusRequest**](UpdateStockAdjustmentStatusRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiStockadjustmentsPost**
> BaseResponseOfstring apiStockadjustmentsPost(createStockAdjustmentRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getStockAdjustmentsApi();
final CreateStockAdjustmentRequest createStockAdjustmentRequest = ; // CreateStockAdjustmentRequest | 

try {
    final response = api.apiStockadjustmentsPost(createStockAdjustmentRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StockAdjustmentsApi->apiStockadjustmentsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createStockAdjustmentRequest** | [**CreateStockAdjustmentRequest**](CreateStockAdjustmentRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

