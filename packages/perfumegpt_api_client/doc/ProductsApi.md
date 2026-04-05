# perfumegpt_api_client.api.ProductsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProductsBestSellersGet**](ProductsApi.md#apiproductsbestsellersget) | **GET** /api/products/best-sellers | 
[**apiProductsCampaignsCampaignIdGet**](ProductsApi.md#apiproductscampaignscampaignidget) | **GET** /api/products/campaigns/{campaignId} | 
[**apiProductsDailySaleFiguresGet**](ProductsApi.md#apiproductsdailysalefiguresget) | **GET** /api/products/daily-sale-figures | 
[**apiProductsEmbeddingsUpdateAllsPost**](ProductsApi.md#apiproductsembeddingsupdateallspost) | **POST** /api/products/embeddings/update/alls | 
[**apiProductsEmbeddingsUpdateProductIdPost**](ProductsApi.md#apiproductsembeddingsupdateproductidpost) | **POST** /api/products/embeddings/update/{productId} | 
[**apiProductsGet**](ProductsApi.md#apiproductsget) | **GET** /api/products | 
[**apiProductsImagesMediaIdSetPrimaryPut**](ProductsApi.md#apiproductsimagesmediaidsetprimaryput) | **PUT** /api/products/images/{mediaId}/set-primary | 
[**apiProductsImagesTemporaryPost**](ProductsApi.md#apiproductsimagestemporarypost) | **POST** /api/products/images/temporary | 
[**apiProductsLookupGet**](ProductsApi.md#apiproductslookupget) | **GET** /api/products/lookup | 
[**apiProductsNewArrivalsGet**](ProductsApi.md#apiproductsnewarrivalsget) | **GET** /api/products/new-arrivals | 
[**apiProductsPost**](ProductsApi.md#apiproductspost) | **POST** /api/products | 
[**apiProductsProductIdDelete**](ProductsApi.md#apiproductsproductiddelete) | **DELETE** /api/products/{productId} | 
[**apiProductsProductIdFastLookGet**](ProductsApi.md#apiproductsproductidfastlookget) | **GET** /api/products/{productId}/fast-look | 
[**apiProductsProductIdGet**](ProductsApi.md#apiproductsproductidget) | **GET** /api/products/{productId} | 
[**apiProductsProductIdImagesGet**](ProductsApi.md#apiproductsproductidimagesget) | **GET** /api/products/{productId}/images | 
[**apiProductsProductIdImagesPrimaryGet**](ProductsApi.md#apiproductsproductidimagesprimaryget) | **GET** /api/products/{productId}/images/primary | 
[**apiProductsProductIdInformationGet**](ProductsApi.md#apiproductsproductidinformationget) | **GET** /api/products/{productId}/information | 
[**apiProductsProductIdPut**](ProductsApi.md#apiproductsproductidput) | **PUT** /api/products/{productId} | 
[**apiProductsSearchSemanticGet**](ProductsApi.md#apiproductssearchsemanticget) | **GET** /api/products/search/semantic | 


# **apiProductsBestSellersGet**
> BaseResponseOfPagedResultOfProductListItem apiProductsBestSellersGet(gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final Gender gender = ; // Gender | 
final int categoryId = 56; // int | 
final int brandId = 56; // int | 
final int volume = 56; // int | 
final num fromPrice = 8.14; // num | 
final num toPrice = 8.14; // num | 
final bool isAvailable = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiProductsBestSellersGet(gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsBestSellersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gender** | [**Gender**](.md)|  | [optional] 
 **categoryId** | **int**|  | [optional] 
 **brandId** | **int**|  | [optional] 
 **volume** | **int**|  | [optional] 
 **fromPrice** | **num**|  | [optional] 
 **toPrice** | **num**|  | [optional] 
 **isAvailable** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfProductListItem**](BaseResponseOfPagedResultOfProductListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsCampaignsCampaignIdGet**
> BaseResponseOfPagedResultOfProductListItem apiProductsCampaignsCampaignIdGet(campaignId, gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final Gender gender = ; // Gender | 
final int categoryId = 56; // int | 
final int brandId = 56; // int | 
final int volume = 56; // int | 
final num fromPrice = 8.14; // num | 
final num toPrice = 8.14; // num | 
final bool isAvailable = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiProductsCampaignsCampaignIdGet(campaignId, gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsCampaignsCampaignIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **gender** | [**Gender**](.md)|  | [optional] 
 **categoryId** | **int**|  | [optional] 
 **brandId** | **int**|  | [optional] 
 **volume** | **int**|  | [optional] 
 **fromPrice** | **num**|  | [optional] 
 **toPrice** | **num**|  | [optional] 
 **isAvailable** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfProductListItem**](BaseResponseOfPagedResultOfProductListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsDailySaleFiguresGet**
> BaseResponseOfListOfProductDailySaleFigureResponse apiProductsDailySaleFiguresGet(date)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final Date date = 2013-10-20; // Date | 

try {
    final response = api.apiProductsDailySaleFiguresGet(date);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsDailySaleFiguresGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**|  | [optional] 

### Return type

[**BaseResponseOfListOfProductDailySaleFigureResponse**](BaseResponseOfListOfProductDailySaleFigureResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsEmbeddingsUpdateAllsPost**
> BaseResponse apiProductsEmbeddingsUpdateAllsPost()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();

try {
    final response = api.apiProductsEmbeddingsUpdateAllsPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsEmbeddingsUpdateAllsPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsEmbeddingsUpdateProductIdPost**
> BaseResponse apiProductsEmbeddingsUpdateProductIdPost(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsEmbeddingsUpdateProductIdPost(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsEmbeddingsUpdateProductIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGet**
> BaseResponseOfPagedResultOfProductListItem apiProductsGet(gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final Gender gender = ; // Gender | 
final int categoryId = 56; // int | 
final int brandId = 56; // int | 
final int volume = 56; // int | 
final num fromPrice = 8.14; // num | 
final num toPrice = 8.14; // num | 
final bool isAvailable = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiProductsGet(gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gender** | [**Gender**](.md)|  | [optional] 
 **categoryId** | **int**|  | [optional] 
 **brandId** | **int**|  | [optional] 
 **volume** | **int**|  | [optional] 
 **fromPrice** | **num**|  | [optional] 
 **toPrice** | **num**|  | [optional] 
 **isAvailable** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfProductListItem**](BaseResponseOfPagedResultOfProductListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsImagesMediaIdSetPrimaryPut**
> BaseResponseOfstring apiProductsImagesMediaIdSetPrimaryPut(mediaId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String mediaId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsImagesMediaIdSetPrimaryPut(mediaId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsImagesMediaIdSetPrimaryPut: $e\n');
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

# **apiProductsImagesTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiProductsImagesTemporaryPost(images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final BuiltList<ProductImageUploadItem> images = ; // BuiltList<ProductImageUploadItem> | 

try {
    final response = api.apiProductsImagesTemporaryPost(images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsImagesTemporaryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | [**BuiltList&lt;ProductImageUploadItem&gt;**](ProductImageUploadItem.md)|  | [optional] 

### Return type

[**BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse**](BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsLookupGet**
> BaseResponseOfListOfProductLookupItem apiProductsLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();

try {
    final response = api.apiProductsLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfProductLookupItem**](BaseResponseOfListOfProductLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsNewArrivalsGet**
> BaseResponseOfPagedResultOfProductListItem apiProductsNewArrivalsGet(gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final Gender gender = ; // Gender | 
final int categoryId = 56; // int | 
final int brandId = 56; // int | 
final int volume = 56; // int | 
final num fromPrice = 8.14; // num | 
final num toPrice = 8.14; // num | 
final bool isAvailable = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiProductsNewArrivalsGet(gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsNewArrivalsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gender** | [**Gender**](.md)|  | [optional] 
 **categoryId** | **int**|  | [optional] 
 **brandId** | **int**|  | [optional] 
 **volume** | **int**|  | [optional] 
 **fromPrice** | **num**|  | [optional] 
 **toPrice** | **num**|  | [optional] 
 **isAvailable** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfProductListItem**](BaseResponseOfPagedResultOfProductListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsPost**
> BaseResponseOfBulkActionResultOfstring apiProductsPost(createProductRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final CreateProductRequest createProductRequest = ; // CreateProductRequest | 

try {
    final response = api.apiProductsPost(createProductRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createProductRequest** | [**CreateProductRequest**](CreateProductRequest.md)|  | 

### Return type

[**BaseResponseOfBulkActionResultOfstring**](BaseResponseOfBulkActionResultOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdDelete**
> BaseResponseOfstring apiProductsProductIdDelete(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsProductIdDelete(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdFastLookGet**
> BaseResponseOfProductFastLookResponse apiProductsProductIdFastLookGet(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsProductIdFastLookGet(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdFastLookGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponseOfProductFastLookResponse**](BaseResponseOfProductFastLookResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdGet**
> BaseResponseOfProductResponse apiProductsProductIdGet(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsProductIdGet(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponseOfProductResponse**](BaseResponseOfProductResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdImagesGet**
> BaseResponseOfListOfMediaResponse apiProductsProductIdImagesGet(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsProductIdImagesGet(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdImagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponseOfListOfMediaResponse**](BaseResponseOfListOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdImagesPrimaryGet**
> BaseResponseOfMediaResponse apiProductsProductIdImagesPrimaryGet(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsProductIdImagesPrimaryGet(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdImagesPrimaryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponseOfMediaResponse**](BaseResponseOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdInformationGet**
> BaseResponseOfProductInforResponse apiProductsProductIdInformationGet(productId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsProductIdInformationGet(productId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdInformationGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**BaseResponseOfProductInforResponse**](BaseResponseOfProductInforResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsProductIdPut**
> BaseResponseOfBulkActionResultOfstring apiProductsProductIdPut(productId, updateProductRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateProductRequest updateProductRequest = ; // UpdateProductRequest | 

try {
    final response = api.apiProductsProductIdPut(productId, updateProductRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsProductIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **updateProductRequest** | [**UpdateProductRequest**](UpdateProductRequest.md)|  | 

### Return type

[**BaseResponseOfBulkActionResultOfstring**](BaseResponseOfBulkActionResultOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsSearchSemanticGet**
> BaseResponseOfPagedResultOfProductListItemWithVariants apiProductsSearchSemanticGet(searchText, gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getProductsApi();
final String searchText = searchText_example; // String | 
final Gender gender = ; // Gender | 
final int categoryId = 56; // int | 
final int brandId = 56; // int | 
final int volume = 56; // int | 
final num fromPrice = 8.14; // num | 
final num toPrice = 8.14; // num | 
final bool isAvailable = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiProductsSearchSemanticGet(searchText, gender, categoryId, brandId, volume, fromPrice, toPrice, isAvailable, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->apiProductsSearchSemanticGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchText** | **String**|  | [optional] 
 **gender** | [**Gender**](.md)|  | [optional] 
 **categoryId** | **int**|  | [optional] 
 **brandId** | **int**|  | [optional] 
 **volume** | **int**|  | [optional] 
 **fromPrice** | **num**|  | [optional] 
 **toPrice** | **num**|  | [optional] 
 **isAvailable** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfProductListItemWithVariants**](BaseResponseOfPagedResultOfProductListItemWithVariants.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

