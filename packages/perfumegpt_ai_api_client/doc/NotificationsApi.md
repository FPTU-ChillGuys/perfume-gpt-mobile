# perfumegpt_ai_api_client.api.NotificationsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiNotificationsIdReadPatch**](NotificationsApi.md#apinotificationsidreadpatch) | **PATCH** /api/notifications/{id}/read | 
[**apiNotificationsReadAllPatch**](NotificationsApi.md#apinotificationsreadallpatch) | **PATCH** /api/notifications/read-all | 


# **apiNotificationsIdReadPatch**
> BaseResponseOfstring apiNotificationsIdReadPatch(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getNotificationsApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getNotificationsApi();

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

