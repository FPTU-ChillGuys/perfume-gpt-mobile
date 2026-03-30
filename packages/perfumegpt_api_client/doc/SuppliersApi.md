# perfumegpt_api_client.api.SuppliersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSuppliersGet**](SuppliersApi.md#apisuppliersget) | **GET** /api/suppliers | 
[**apiSuppliersIdDelete**](SuppliersApi.md#apisuppliersiddelete) | **DELETE** /api/suppliers/{id} | 
[**apiSuppliersIdGet**](SuppliersApi.md#apisuppliersidget) | **GET** /api/suppliers/{id} | 
[**apiSuppliersIdPut**](SuppliersApi.md#apisuppliersidput) | **PUT** /api/suppliers/{id} | 
[**apiSuppliersLookupGet**](SuppliersApi.md#apisupplierslookupget) | **GET** /api/suppliers/lookup | 
[**apiSuppliersPost**](SuppliersApi.md#apisupplierspost) | **POST** /api/suppliers | 


# **apiSuppliersGet**
> BaseResponseOfListOfSupplierResponse apiSuppliersGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();

try {
    final response = api.apiSuppliersGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfSupplierResponse**](BaseResponseOfListOfSupplierResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSuppliersIdDelete**
> BaseResponseOfboolean apiSuppliersIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();
final int id = 56; // int | 

try {
    final response = api.apiSuppliersIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersIdDelete: $e\n');
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

# **apiSuppliersIdGet**
> BaseResponseOfSupplierResponse apiSuppliersIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();
final int id = 56; // int | 

try {
    final response = api.apiSuppliersIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfSupplierResponse**](BaseResponseOfSupplierResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSuppliersIdPut**
> BaseResponseOfSupplierResponse apiSuppliersIdPut(id, updateSupplierRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();
final int id = 56; // int | 
final UpdateSupplierRequest updateSupplierRequest = ; // UpdateSupplierRequest | 

try {
    final response = api.apiSuppliersIdPut(id, updateSupplierRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateSupplierRequest** | [**UpdateSupplierRequest**](UpdateSupplierRequest.md)|  | 

### Return type

[**BaseResponseOfSupplierResponse**](BaseResponseOfSupplierResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSuppliersLookupGet**
> BaseResponseOfListOfSupplierLookupItem apiSuppliersLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();

try {
    final response = api.apiSuppliersLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfSupplierLookupItem**](BaseResponseOfListOfSupplierLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSuppliersPost**
> BaseResponseOfSupplierResponse apiSuppliersPost(createSupplierRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();
final CreateSupplierRequest createSupplierRequest = ; // CreateSupplierRequest | 

try {
    final response = api.apiSuppliersPost(createSupplierRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSupplierRequest** | [**CreateSupplierRequest**](CreateSupplierRequest.md)|  | 

### Return type

[**BaseResponseOfSupplierResponse**](BaseResponseOfSupplierResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

