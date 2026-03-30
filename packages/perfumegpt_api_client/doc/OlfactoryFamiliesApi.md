# perfumegpt_api_client.api.OlfactoryFamiliesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOlfactoryfamiliesGet**](OlfactoryFamiliesApi.md#apiolfactoryfamiliesget) | **GET** /api/olfactoryfamilies | 
[**apiOlfactoryfamiliesIdDelete**](OlfactoryFamiliesApi.md#apiolfactoryfamiliesiddelete) | **DELETE** /api/olfactoryfamilies/{id} | 
[**apiOlfactoryfamiliesIdGet**](OlfactoryFamiliesApi.md#apiolfactoryfamiliesidget) | **GET** /api/olfactoryfamilies/{id} | 
[**apiOlfactoryfamiliesIdPut**](OlfactoryFamiliesApi.md#apiolfactoryfamiliesidput) | **PUT** /api/olfactoryfamilies/{id} | 
[**apiOlfactoryfamiliesLookupGet**](OlfactoryFamiliesApi.md#apiolfactoryfamilieslookupget) | **GET** /api/olfactoryfamilies/lookup | 
[**apiOlfactoryfamiliesPost**](OlfactoryFamiliesApi.md#apiolfactoryfamiliespost) | **POST** /api/olfactoryfamilies | 


# **apiOlfactoryfamiliesGet**
> BaseResponseOfListOfOlfactoryFamilyResponse apiOlfactoryfamiliesGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOlfactoryFamiliesApi();

try {
    final response = api.apiOlfactoryfamiliesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling OlfactoryFamiliesApi->apiOlfactoryfamiliesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfOlfactoryFamilyResponse**](BaseResponseOfListOfOlfactoryFamilyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOlfactoryfamiliesIdDelete**
> BaseResponseOfboolean apiOlfactoryfamiliesIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOlfactoryFamiliesApi();
final int id = 56; // int | 

try {
    final response = api.apiOlfactoryfamiliesIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OlfactoryFamiliesApi->apiOlfactoryfamiliesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOlfactoryfamiliesIdGet**
> BaseResponseOfOlfactoryFamilyResponse apiOlfactoryfamiliesIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOlfactoryFamiliesApi();
final int id = 56; // int | 

try {
    final response = api.apiOlfactoryfamiliesIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OlfactoryFamiliesApi->apiOlfactoryfamiliesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfOlfactoryFamilyResponse**](BaseResponseOfOlfactoryFamilyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOlfactoryfamiliesIdPut**
> BaseResponseOfOlfactoryFamilyResponse apiOlfactoryfamiliesIdPut(id, updateOlfactoryFamilyRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOlfactoryFamiliesApi();
final int id = 56; // int | 
final UpdateOlfactoryFamilyRequest updateOlfactoryFamilyRequest = ; // UpdateOlfactoryFamilyRequest | 

try {
    final response = api.apiOlfactoryfamiliesIdPut(id, updateOlfactoryFamilyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OlfactoryFamiliesApi->apiOlfactoryfamiliesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateOlfactoryFamilyRequest** | [**UpdateOlfactoryFamilyRequest**](UpdateOlfactoryFamilyRequest.md)|  | 

### Return type

[**BaseResponseOfOlfactoryFamilyResponse**](BaseResponseOfOlfactoryFamilyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOlfactoryfamiliesLookupGet**
> BaseResponseOfListOfOlfactoryLookupResponse apiOlfactoryfamiliesLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOlfactoryFamiliesApi();

try {
    final response = api.apiOlfactoryfamiliesLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling OlfactoryFamiliesApi->apiOlfactoryfamiliesLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfOlfactoryLookupResponse**](BaseResponseOfListOfOlfactoryLookupResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOlfactoryfamiliesPost**
> BaseResponseOfOlfactoryFamilyResponse apiOlfactoryfamiliesPost(createOlfactoryFamilyRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOlfactoryFamiliesApi();
final CreateOlfactoryFamilyRequest createOlfactoryFamilyRequest = ; // CreateOlfactoryFamilyRequest | 

try {
    final response = api.apiOlfactoryfamiliesPost(createOlfactoryFamilyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OlfactoryFamiliesApi->apiOlfactoryfamiliesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOlfactoryFamilyRequest** | [**CreateOlfactoryFamilyRequest**](CreateOlfactoryFamilyRequest.md)|  | 

### Return type

[**BaseResponseOfOlfactoryFamilyResponse**](BaseResponseOfOlfactoryFamilyResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

