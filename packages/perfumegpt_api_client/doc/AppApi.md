# perfumegpt_api_client.api.AppApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appControllerCheckHealth**](AppApi.md#appcontrollercheckhealth) | **GET** / | Health check - Kiểm tra trạng thái server


# **appControllerCheckHealth**
> String appControllerCheckHealth()

Health check - Kiểm tra trạng thái server

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAppApi();

try {
    final response = api.appControllerCheckHealth();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppApi->appControllerCheckHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

