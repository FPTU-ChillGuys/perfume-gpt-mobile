# perfumegpt_api_client.api.SourcingCatalogsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSourcingcatalogsGet**](SourcingCatalogsApi.md#apisourcingcatalogsget) | **GET** /api/sourcingcatalogs | 
[**apiSourcingcatalogsIdDelete**](SourcingCatalogsApi.md#apisourcingcatalogsiddelete) | **DELETE** /api/sourcingcatalogs/{id} | 
[**apiSourcingcatalogsIdPut**](SourcingCatalogsApi.md#apisourcingcatalogsidput) | **PUT** /api/sourcingcatalogs/{id} | 
[**apiSourcingcatalogsIdSetPrimaryPut**](SourcingCatalogsApi.md#apisourcingcatalogsidsetprimaryput) | **PUT** /api/sourcingcatalogs/{id}/set-primary | 
[**apiSourcingcatalogsPost**](SourcingCatalogsApi.md#apisourcingcatalogspost) | **POST** /api/sourcingcatalogs | 


# **apiSourcingcatalogsGet**
> BaseResponseOfIEnumerableOfCatalogItemResponse apiSourcingcatalogsGet(supplierId, variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSourcingCatalogsApi();
final int supplierId = 56; // int | 
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiSourcingcatalogsGet(supplierId, variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SourcingCatalogsApi->apiSourcingcatalogsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | [optional] 
 **variantId** | **String**|  | [optional] 

### Return type

[**BaseResponseOfIEnumerableOfCatalogItemResponse**](BaseResponseOfIEnumerableOfCatalogItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSourcingcatalogsIdDelete**
> BaseResponseOfstring apiSourcingcatalogsIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSourcingCatalogsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiSourcingcatalogsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SourcingCatalogsApi->apiSourcingcatalogsIdDelete: $e\n');
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

# **apiSourcingcatalogsIdPut**
> BaseResponseOfstring apiSourcingcatalogsIdPut(id, updateCatalogItemRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSourcingCatalogsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCatalogItemRequest updateCatalogItemRequest = ; // UpdateCatalogItemRequest | 

try {
    final response = api.apiSourcingcatalogsIdPut(id, updateCatalogItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SourcingCatalogsApi->apiSourcingcatalogsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCatalogItemRequest** | [**UpdateCatalogItemRequest**](UpdateCatalogItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSourcingcatalogsIdSetPrimaryPut**
> BaseResponseOfstring apiSourcingcatalogsIdSetPrimaryPut(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSourcingCatalogsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiSourcingcatalogsIdSetPrimaryPut(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SourcingCatalogsApi->apiSourcingcatalogsIdSetPrimaryPut: $e\n');
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

# **apiSourcingcatalogsPost**
> BaseResponseOfstring apiSourcingcatalogsPost(createCatalogItemRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSourcingCatalogsApi();
final CreateCatalogItemRequest createCatalogItemRequest = ; // CreateCatalogItemRequest | 

try {
    final response = api.apiSourcingcatalogsPost(createCatalogItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SourcingCatalogsApi->apiSourcingcatalogsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCatalogItemRequest** | [**CreateCatalogItemRequest**](CreateCatalogItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

