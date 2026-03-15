# perfumegpt_api_client.api.BackgroundJobsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiBackgroundjobsCleanupTemporaryMediaPost**](BackgroundJobsApi.md#apibackgroundjobscleanuptemporarymediapost) | **POST** /api/backgroundjobs/cleanup-temporary-media | 
[**apiBackgroundjobsDashboardUrlGet**](BackgroundJobsApi.md#apibackgroundjobsdashboardurlget) | **GET** /api/backgroundjobs/dashboard-url | 
[**apiBackgroundjobsProcessExpiredReservationsPost**](BackgroundJobsApi.md#apibackgroundjobsprocessexpiredreservationspost) | **POST** /api/backgroundjobs/process-expired-reservations | 
[**apiBackgroundjobsTriggerJobPost**](BackgroundJobsApi.md#apibackgroundjobstriggerjobpost) | **POST** /api/backgroundjobs/trigger-job | 


# **apiBackgroundjobsCleanupTemporaryMediaPost**
> apiBackgroundjobsCleanupTemporaryMediaPost()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBackgroundJobsApi();

try {
    api.apiBackgroundjobsCleanupTemporaryMediaPost();
} on DioException catch (e) {
    print('Exception when calling BackgroundJobsApi->apiBackgroundjobsCleanupTemporaryMediaPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBackgroundjobsDashboardUrlGet**
> apiBackgroundjobsDashboardUrlGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBackgroundJobsApi();

try {
    api.apiBackgroundjobsDashboardUrlGet();
} on DioException catch (e) {
    print('Exception when calling BackgroundJobsApi->apiBackgroundjobsDashboardUrlGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBackgroundjobsProcessExpiredReservationsPost**
> apiBackgroundjobsProcessExpiredReservationsPost()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBackgroundJobsApi();

try {
    api.apiBackgroundjobsProcessExpiredReservationsPost();
} on DioException catch (e) {
    print('Exception when calling BackgroundJobsApi->apiBackgroundjobsProcessExpiredReservationsPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBackgroundjobsTriggerJobPost**
> apiBackgroundjobsTriggerJobPost()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBackgroundJobsApi();

try {
    api.apiBackgroundjobsTriggerJobPost();
} on DioException catch (e) {
    print('Exception when calling BackgroundJobsApi->apiBackgroundjobsTriggerJobPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

