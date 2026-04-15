# perfumegpt_api_client.api.CategoriesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCategoriesGet**](CategoriesApi.md#apicategoriesget) | **GET** /api/categories | 
[**apiCategoriesIdDelete**](CategoriesApi.md#apicategoriesiddelete) | **DELETE** /api/categories/{id} | 
[**apiCategoriesIdGet**](CategoriesApi.md#apicategoriesidget) | **GET** /api/categories/{id} | 
[**apiCategoriesIdPut**](CategoriesApi.md#apicategoriesidput) | **PUT** /api/categories/{id} | 
[**apiCategoriesLookupGet**](CategoriesApi.md#apicategorieslookupget) | **GET** /api/categories/lookup | 
[**apiCategoriesPost**](CategoriesApi.md#apicategoriespost) | **POST** /api/categories | 


# **apiCategoriesGet**
> BaseResponseOfListOfCategoryResponse apiCategoriesGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCategoriesApi();

try {
    final response = api.apiCategoriesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoriesApi->apiCategoriesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfCategoryResponse**](BaseResponseOfListOfCategoryResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesIdDelete**
> BaseResponseOfboolean apiCategoriesIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCategoriesApi();
final int id = 56; // int | 

try {
    final response = api.apiCategoriesIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoriesApi->apiCategoriesIdDelete: $e\n');
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

# **apiCategoriesIdGet**
> BaseResponseOfCategoryResponse apiCategoriesIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCategoriesApi();
final int id = 56; // int | 

try {
    final response = api.apiCategoriesIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoriesApi->apiCategoriesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfCategoryResponse**](BaseResponseOfCategoryResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesIdPut**
> BaseResponseOfCategoryResponse apiCategoriesIdPut(id, updateCategoryRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCategoriesApi();
final int id = 56; // int | 
final UpdateCategoryRequest updateCategoryRequest = ; // UpdateCategoryRequest | 

try {
    final response = api.apiCategoriesIdPut(id, updateCategoryRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoriesApi->apiCategoriesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateCategoryRequest** | [**UpdateCategoryRequest**](UpdateCategoryRequest.md)|  | 

### Return type

[**BaseResponseOfCategoryResponse**](BaseResponseOfCategoryResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesLookupGet**
> BaseResponseOfListOfCategoriesLookupItem apiCategoriesLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCategoriesApi();

try {
    final response = api.apiCategoriesLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoriesApi->apiCategoriesLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfCategoriesLookupItem**](BaseResponseOfListOfCategoriesLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesPost**
> BaseResponseOfCategoryResponse apiCategoriesPost(createCategoryRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCategoriesApi();
final CreateCategoryRequest createCategoryRequest = ; // CreateCategoryRequest | 

try {
    final response = api.apiCategoriesPost(createCategoryRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoriesApi->apiCategoriesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCategoryRequest** | [**CreateCategoryRequest**](CreateCategoryRequest.md)|  | 

### Return type

[**BaseResponseOfCategoryResponse**](BaseResponseOfCategoryResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

