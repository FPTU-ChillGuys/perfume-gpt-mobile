# perfumegpt_api_client.api.ProfileApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**profileControllerGetOwnProfile**](ProfileApi.md#profilecontrollergetownprofile) | **GET** /profile/me | Lấy thông tin profile của người dùng hiện tại
[**profileControllerGetProfileReport**](ProfileApi.md#profilecontrollergetprofilereport) | **GET** /profile/report | Tạo báo cáo profile dưới dạng text


# **profileControllerGetOwnProfile**
> ProfileControllerGetOwnProfile200Response profileControllerGetOwnProfile()

Lấy thông tin profile của người dùng hiện tại

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProfileApi();

try {
    final response = api.profileControllerGetOwnProfile();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfileApi->profileControllerGetOwnProfile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProfileControllerGetOwnProfile200Response**](ProfileControllerGetOwnProfile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profileControllerGetProfileReport**
> EmailControllerSendEmail200Response profileControllerGetProfileReport()

Tạo báo cáo profile dưới dạng text

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProfileApi();

try {
    final response = api.profileControllerGetProfileReport();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfileApi->profileControllerGetProfileReport: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

