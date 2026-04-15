# perfumegpt_api_client.api.BrandsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiBrandsGet**](BrandsApi.md#apibrandsget) | **GET** /api/brands | 
[**apiBrandsIdDelete**](BrandsApi.md#apibrandsiddelete) | **DELETE** /api/brands/{id} | 
[**apiBrandsIdGet**](BrandsApi.md#apibrandsidget) | **GET** /api/brands/{id} | 
[**apiBrandsIdPut**](BrandsApi.md#apibrandsidput) | **PUT** /api/brands/{id} | 
[**apiBrandsLookupGet**](BrandsApi.md#apibrandslookupget) | **GET** /api/brands/lookup | 
[**apiBrandsPost**](BrandsApi.md#apibrandspost) | **POST** /api/brands | 


# **apiBrandsGet**
> BaseResponseOfListOfBrandResponse apiBrandsGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBrandsApi();

try {
    final response = api.apiBrandsGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrandsApi->apiBrandsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfBrandResponse**](BaseResponseOfListOfBrandResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBrandsIdDelete**
> BaseResponseOfboolean apiBrandsIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBrandsApi();
final int id = 56; // int | 

try {
    final response = api.apiBrandsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrandsApi->apiBrandsIdDelete: $e\n');
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

# **apiBrandsIdGet**
> BaseResponseOfBrandResponse apiBrandsIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBrandsApi();
final int id = 56; // int | 

try {
    final response = api.apiBrandsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrandsApi->apiBrandsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfBrandResponse**](BaseResponseOfBrandResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBrandsIdPut**
> BaseResponseOfBrandResponse apiBrandsIdPut(id, updateBrandRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBrandsApi();
final int id = 56; // int | 
final UpdateBrandRequest updateBrandRequest = ; // UpdateBrandRequest | 

try {
    final response = api.apiBrandsIdPut(id, updateBrandRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrandsApi->apiBrandsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateBrandRequest** | [**UpdateBrandRequest**](UpdateBrandRequest.md)|  | 

### Return type

[**BaseResponseOfBrandResponse**](BaseResponseOfBrandResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBrandsLookupGet**
> BaseResponseOfListOfBrandLookupItem apiBrandsLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBrandsApi();

try {
    final response = api.apiBrandsLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrandsApi->apiBrandsLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfBrandLookupItem**](BaseResponseOfListOfBrandLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiBrandsPost**
> BaseResponseOfBrandResponse apiBrandsPost(createBrandRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getBrandsApi();
final CreateBrandRequest createBrandRequest = ; // CreateBrandRequest | 

try {
    final response = api.apiBrandsPost(createBrandRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrandsApi->apiBrandsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBrandRequest** | [**CreateBrandRequest**](CreateBrandRequest.md)|  | 

### Return type

[**BaseResponseOfBrandResponse**](BaseResponseOfBrandResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

