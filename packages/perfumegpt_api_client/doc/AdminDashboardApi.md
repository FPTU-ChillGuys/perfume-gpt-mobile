# perfumegpt_api_client.api.AdminDashboardApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAdmindashboardInventoryLevelsGet**](AdminDashboardApi.md#apiadmindashboardinventorylevelsget) | **GET** /api/admindashboard/inventory-levels | 
[**apiAdmindashboardRevenueGet**](AdminDashboardApi.md#apiadmindashboardrevenueget) | **GET** /api/admindashboard/revenue | 
[**apiAdmindashboardTopProductsGet**](AdminDashboardApi.md#apiadmindashboardtopproductsget) | **GET** /api/admindashboard/top-products | 


# **apiAdmindashboardInventoryLevelsGet**
> BaseResponseOfInventoryLevelsResponse apiAdmindashboardInventoryLevelsGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAdminDashboardApi();

try {
    final response = api.apiAdmindashboardInventoryLevelsGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminDashboardApi->apiAdmindashboardInventoryLevelsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfInventoryLevelsResponse**](BaseResponseOfInventoryLevelsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdmindashboardRevenueGet**
> BaseResponseOfRevenueSummaryResponse apiAdmindashboardRevenueGet(fromDate, toDate)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAdminDashboardApi();
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.apiAdmindashboardRevenueGet(fromDate, toDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminDashboardApi->apiAdmindashboardRevenueGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 

### Return type

[**BaseResponseOfRevenueSummaryResponse**](BaseResponseOfRevenueSummaryResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdmindashboardTopProductsGet**
> BaseResponseOfListOfTopProductResponse apiAdmindashboardTopProductsGet(top, fromDate, toDate)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAdminDashboardApi();
final int top = 56; // int | 
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.apiAdmindashboardTopProductsGet(top, fromDate, toDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminDashboardApi->apiAdmindashboardTopProductsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **top** | **int**|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 

### Return type

[**BaseResponseOfListOfTopProductResponse**](BaseResponseOfListOfTopProductResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

