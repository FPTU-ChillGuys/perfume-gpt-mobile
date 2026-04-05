# perfumegpt_api_client.api.ProductVariantsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProductvariantsGet**](ProductVariantsApi.md#apiproductvariantsget) | **GET** /api/productvariants | 
[**apiProductvariantsImagesMediaIdSetPrimaryPut**](ProductVariantsApi.md#apiproductvariantsimagesmediaidsetprimaryput) | **PUT** /api/productvariants/images/{mediaId}/set-primary | 
[**apiProductvariantsImagesTemporaryPost**](ProductVariantsApi.md#apiproductvariantsimagestemporarypost) | **POST** /api/productvariants/images/temporary | 
[**apiProductvariantsLookupGet**](ProductVariantsApi.md#apiproductvariantslookupget) | **GET** /api/productvariants/lookup | 
[**apiProductvariantsPost**](ProductVariantsApi.md#apiproductvariantspost) | **POST** /api/productvariants | 
[**apiProductvariantsVariantIdDelete**](ProductVariantsApi.md#apiproductvariantsvariantiddelete) | **DELETE** /api/productvariants/{variantId} | 
[**apiProductvariantsVariantIdGet**](ProductVariantsApi.md#apiproductvariantsvariantidget) | **GET** /api/productvariants/{variantId} | 
[**apiProductvariantsVariantIdImagesGet**](ProductVariantsApi.md#apiproductvariantsvariantidimagesget) | **GET** /api/productvariants/{variantId}/images | 
[**apiProductvariantsVariantIdImagesPrimaryGet**](ProductVariantsApi.md#apiproductvariantsvariantidimagesprimaryget) | **GET** /api/productvariants/{variantId}/images/primary | 
[**apiProductvariantsVariantIdPut**](ProductVariantsApi.md#apiproductvariantsvariantidput) | **PUT** /api/productvariants/{variantId} | 


# **apiProductvariantsGet**
> BaseResponseOfPagedResultOfVariantPagedItem apiProductvariantsGet(pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiProductvariantsGet(pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfVariantPagedItem**](BaseResponseOfPagedResultOfVariantPagedItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsImagesMediaIdSetPrimaryPut**
> BaseResponseOfstring apiProductvariantsImagesMediaIdSetPrimaryPut(mediaId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String mediaId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductvariantsImagesMediaIdSetPrimaryPut(mediaId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsImagesMediaIdSetPrimaryPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsImagesTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiProductvariantsImagesTemporaryPost(images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final BuiltList<VariantImageUploadItem> images = ; // BuiltList<VariantImageUploadItem> | 

try {
    final response = api.apiProductvariantsImagesTemporaryPost(images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsImagesTemporaryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | [**BuiltList&lt;VariantImageUploadItem&gt;**](VariantImageUploadItem.md)|  | [optional] 

### Return type

[**BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse**](BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsLookupGet**
> BaseResponseOfListOfVariantLookupItem apiProductvariantsLookupGet(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductvariantsLookupGet(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsLookupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | [optional] 

### Return type

[**BaseResponseOfListOfVariantLookupItem**](BaseResponseOfListOfVariantLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsPost**
> BaseResponseOfBulkActionResultOfstring apiProductvariantsPost(createVariantRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final CreateVariantRequest createVariantRequest = ; // CreateVariantRequest | 

try {
    final response = api.apiProductvariantsPost(createVariantRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createVariantRequest** | [**CreateVariantRequest**](CreateVariantRequest.md)|  | 

### Return type

[**BaseResponseOfBulkActionResultOfstring**](BaseResponseOfBulkActionResultOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsVariantIdDelete**
> BaseResponseOfstring apiProductvariantsVariantIdDelete(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductvariantsVariantIdDelete(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsVariantIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsVariantIdGet**
> BaseResponseOfProductVariantResponse apiProductvariantsVariantIdGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductvariantsVariantIdGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsVariantIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfProductVariantResponse**](BaseResponseOfProductVariantResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsVariantIdImagesGet**
> BaseResponseOfListOfMediaResponse apiProductvariantsVariantIdImagesGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductvariantsVariantIdImagesGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsVariantIdImagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfListOfMediaResponse**](BaseResponseOfListOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsVariantIdImagesPrimaryGet**
> BaseResponseOfMediaResponse apiProductvariantsVariantIdImagesPrimaryGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductvariantsVariantIdImagesPrimaryGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsVariantIdImagesPrimaryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfMediaResponse**](BaseResponseOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductvariantsVariantIdPut**
> BaseResponseOfBulkActionResultOfstring apiProductvariantsVariantIdPut(variantId, updateVariantRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductVariantsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateVariantRequest updateVariantRequest = ; // UpdateVariantRequest | 

try {
    final response = api.apiProductvariantsVariantIdPut(variantId, updateVariantRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductVariantsApi->apiProductvariantsVariantIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 
 **updateVariantRequest** | [**UpdateVariantRequest**](UpdateVariantRequest.md)|  | 

### Return type

[**BaseResponseOfBulkActionResultOfstring**](BaseResponseOfBulkActionResultOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

