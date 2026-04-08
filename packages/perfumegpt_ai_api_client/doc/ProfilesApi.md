# perfumegpt_ai_api_client.api.ProfilesApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProfilesMeGet**](ProfilesApi.md#apiprofilesmeget) | **GET** /api/profiles/me | 
[**apiProfilesPut**](ProfilesApi.md#apiprofilesput) | **PUT** /api/profiles | 


# **apiProfilesMeGet**
> BaseResponseOfProfileResponse apiProfilesMeGet()



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProfilesApi();

try {
    final response = api.apiProfilesMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfilesApi->apiProfilesMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfProfileResponse**](BaseResponseOfProfileResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProfilesPut**
> BaseResponseOfstring apiProfilesPut(updateProfileRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProfilesApi();
final UpdateProfileRequest updateProfileRequest = ; // UpdateProfileRequest | 

try {
    final response = api.apiProfilesPut(updateProfileRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfilesApi->apiProfilesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateProfileRequest** | [**UpdateProfileRequest**](UpdateProfileRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

