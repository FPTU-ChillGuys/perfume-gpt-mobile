# perfumegpt_api_client.api.BannersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiBannersBannerIdDelete**](BannersApi.md#apibannersbanneriddelete) | **DELETE** /api/banners/{bannerId} | 
[**apiBannersBannerIdGet**](BannersApi.md#apibannersbanneridget) | **GET** /api/banners/{bannerId} | 
[**apiBannersBannerIdPut**](BannersApi.md#apibannersbanneridput) | **PUT** /api/banners/{bannerId} | 
[**apiBannersGet**](BannersApi.md#apibannersget) | **GET** /api/banners | 
[**apiBannersHomeGet**](BannersApi.md#apibannershomeget) | **GET** /api/banners/home | 
[**apiBannersImagesTemporaryPost**](BannersApi.md#apibannersimagestemporarypost) | **POST** /api/banners/images/temporary | 
[**apiBannersPost**](BannersApi.md#apibannerspost) | **POST** /api/banners | 


# **apiBannersBannerIdDelete**
> BaseResponseOfstring apiBannersBannerIdDelete(bannerId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final String bannerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiBannersBannerIdDelete(bannerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersBannerIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bannerId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBannersBannerIdGet**
> BaseResponseOfBannerResponse apiBannersBannerIdGet(bannerId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final String bannerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiBannersBannerIdGet(bannerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersBannerIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bannerId** | **String**|  | 

### Return type

[**BaseResponseOfBannerResponse**](BaseResponseOfBannerResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBannersBannerIdPut**
> BaseResponseOfstring apiBannersBannerIdPut(bannerId, updateBannerRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final String bannerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateBannerRequest updateBannerRequest = ; // UpdateBannerRequest | 

try {
    final response = api.apiBannersBannerIdPut(bannerId, updateBannerRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersBannerIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bannerId** | **String**|  | 
 **updateBannerRequest** | [**UpdateBannerRequest**](UpdateBannerRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBannersGet**
> BaseResponseOfPagedResultOfBannerResponse apiBannersGet(searchTerm, position, isActive, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final String searchTerm = searchTerm_example; // String | 
final BannerPosition position = ; // BannerPosition | 
final bool isActive = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiBannersGet(searchTerm, position, isActive, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | **String**|  | [optional] 
 **position** | [**BannerPosition**](.md)|  | [optional] 
 **isActive** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfBannerResponse**](BaseResponseOfPagedResultOfBannerResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBannersHomeGet**
> BaseResponseOfListOfBannerResponse apiBannersHomeGet(position)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final BannerPosition position = ; // BannerPosition | 

try {
    final response = api.apiBannersHomeGet(position);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersHomeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **position** | [**BannerPosition**](.md)|  | [optional] 

### Return type

[**BaseResponseOfListOfBannerResponse**](BaseResponseOfListOfBannerResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBannersImagesTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiBannersImagesTemporaryPost(images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.apiBannersImagesTemporaryPost(images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersImagesTemporaryPost: $e\n');
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

# **apiBannersPost**
> BaseResponseOfstring apiBannersPost(createBannerRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBannersApi();
final CreateBannerRequest createBannerRequest = ; // CreateBannerRequest | 

try {
    final response = api.apiBannersPost(createBannerRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BannersApi->apiBannersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBannerRequest** | [**CreateBannerRequest**](CreateBannerRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

