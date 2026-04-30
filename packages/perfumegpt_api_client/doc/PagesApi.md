# perfumegpt_api_client.api.PagesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPagesGet**](PagesApi.md#apipagesget) | **GET** /api/pages | 
[**apiPagesImagesTemporaryPost**](PagesApi.md#apipagesimagestemporarypost) | **POST** /api/pages/images/temporary | 
[**apiPagesPost**](PagesApi.md#apipagespost) | **POST** /api/pages | 
[**apiPagesSlugDelete**](PagesApi.md#apipagesslugdelete) | **DELETE** /api/pages/{slug} | 
[**apiPagesSlugGet**](PagesApi.md#apipagesslugget) | **GET** /api/pages/{slug} | 
[**apiPagesSlugPublishPost**](PagesApi.md#apipagesslugpublishpost) | **POST** /api/pages/{slug}/publish | 
[**apiPagesSlugPut**](PagesApi.md#apipagesslugput) | **PUT** /api/pages/{slug} | 


# **apiPagesGet**
> BaseResponseOfPagedResultOfPageResponse apiPagesGet(searchTerm, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final String searchTerm = searchTerm_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiPagesGet(searchTerm, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfPageResponse**](BaseResponseOfPagedResultOfPageResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPagesImagesTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiPagesImagesTemporaryPost(images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.apiPagesImagesTemporaryPost(images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesImagesTemporaryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | [**List&lt;MultipartFile&gt;**](MultipartFile.md)|  | [optional] 

### Return type

[**BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse**](BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPagesPost**
> BaseResponseOfPageResponse apiPagesPost(createPageRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final CreatePageRequest createPageRequest = ; // CreatePageRequest | 

try {
    final response = api.apiPagesPost(createPageRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPageRequest** | [**CreatePageRequest**](CreatePageRequest.md)|  | 

### Return type

[**BaseResponseOfPageResponse**](BaseResponseOfPageResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPagesSlugDelete**
> BaseResponse apiPagesSlugDelete(slug)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final String slug = slug_example; // String | 

try {
    final response = api.apiPagesSlugDelete(slug);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesSlugDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPagesSlugGet**
> BaseResponseOfPageResponse apiPagesSlugGet(slug)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final String slug = slug_example; // String | 

try {
    final response = api.apiPagesSlugGet(slug);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesSlugGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 

### Return type

[**BaseResponseOfPageResponse**](BaseResponseOfPageResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPagesSlugPublishPost**
> BaseResponseOfPageResponse apiPagesSlugPublishPost(slug)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final String slug = slug_example; // String | 

try {
    final response = api.apiPagesSlugPublishPost(slug);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesSlugPublishPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 

### Return type

[**BaseResponseOfPageResponse**](BaseResponseOfPageResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPagesSlugPut**
> BaseResponseOfPageResponse apiPagesSlugPut(slug, updatePageRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPagesApi();
final String slug = slug_example; // String | 
final UpdatePageRequest updatePageRequest = ; // UpdatePageRequest | 

try {
    final response = api.apiPagesSlugPut(slug, updatePageRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PagesApi->apiPagesSlugPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **updatePageRequest** | [**UpdatePageRequest**](UpdatePageRequest.md)|  | 

### Return type

[**BaseResponseOfPageResponse**](BaseResponseOfPageResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

