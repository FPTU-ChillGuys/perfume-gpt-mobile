# perfumegpt_api_client.api.NotificationsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiNotificationsGet**](NotificationsApi.md#apinotificationsget) | **GET** /api/notifications | 
[**apiNotificationsIdReadPatch**](NotificationsApi.md#apinotificationsidreadpatch) | **PATCH** /api/notifications/{id}/read | 
[**apiNotificationsReadAllPatch**](NotificationsApi.md#apinotificationsreadallpatch) | **PATCH** /api/notifications/read-all | 


# **apiNotificationsGet**
> BaseResponseOfPagedResultOfNotificationListItemResponse apiNotificationsGet(userId, targetRole, isRead, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getNotificationsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String targetRole = targetRole_example; // String | 
final bool isRead = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiNotificationsGet(userId, targetRole, isRead, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->apiNotificationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **targetRole** | **String**|  | [optional] 
 **isRead** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfNotificationListItemResponse**](BaseResponseOfPagedResultOfNotificationListItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiNotificationsIdReadPatch**
> BaseResponseOfstring apiNotificationsIdReadPatch(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getNotificationsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiNotificationsIdReadPatch(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->apiNotificationsIdReadPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiNotificationsReadAllPatch**
> BaseResponseOfstring apiNotificationsReadAllPatch()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getNotificationsApi();

try {
    final response = api.apiNotificationsReadAllPatch();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->apiNotificationsReadAllPatch: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

