# perfumegpt_ai_api_client.api.AdminDashboardApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAdmindashboardInventoryLevelsGet**](AdminDashboardApi.md#apiadmindashboardinventorylevelsget) | **GET** /api/admindashboard/inventory-levels | 
[**apiAdmindashboardOverviewGet**](AdminDashboardApi.md#apiadmindashboardoverviewget) | **GET** /api/admindashboard/overview | 
[**apiAdmindashboardRevenueGet**](AdminDashboardApi.md#apiadmindashboardrevenueget) | **GET** /api/admindashboard/revenue | 
[**apiAdmindashboardTopProductsGet**](AdminDashboardApi.md#apiadmindashboardtopproductsget) | **GET** /api/admindashboard/top-products | 


# **apiAdmindashboardInventoryLevelsGet**
> BaseResponseOfInventoryLevelsResponse apiAdmindashboardInventoryLevelsGet(expiringWithinDays)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminDashboardApi();
final int expiringWithinDays = 56; // int | 

try {
    final response = api.apiAdmindashboardInventoryLevelsGet(expiringWithinDays);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminDashboardApi->apiAdmindashboardInventoryLevelsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiringWithinDays** | **int**|  | [optional] 

### Return type

[**BaseResponseOfInventoryLevelsResponse**](BaseResponseOfInventoryLevelsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdmindashboardOverviewGet**
> BaseResponseOfAdminDashboardOverviewResponse apiAdmindashboardOverviewGet(topProductsCount, expiringWithinDays, top, fromDate, toDate)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminDashboardApi();
final int topProductsCount = 56; // int | 
final int expiringWithinDays = 56; // int | 
final int top = 56; // int | 
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.apiAdmindashboardOverviewGet(topProductsCount, expiringWithinDays, top, fromDate, toDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminDashboardApi->apiAdmindashboardOverviewGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topProductsCount** | **int**|  | [optional] 
 **expiringWithinDays** | **int**|  | [optional] 
 **top** | **int**|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 

### Return type

[**BaseResponseOfAdminDashboardOverviewResponse**](BaseResponseOfAdminDashboardOverviewResponse.md)

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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminDashboardApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminDashboardApi();
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

