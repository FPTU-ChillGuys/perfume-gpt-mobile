# perfumegpt_api_client.api.ReviewsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiReviewsGet**](ReviewsApi.md#apireviewsget) | **GET** /api/reviews | 
[**apiReviewsImagesTemporaryPost**](ReviewsApi.md#apireviewsimagestemporarypost) | **POST** /api/reviews/images/temporary | 
[**apiReviewsMeGet**](ReviewsApi.md#apireviewsmeget) | **GET** /api/reviews/me | 
[**apiReviewsPost**](ReviewsApi.md#apireviewspost) | **POST** /api/reviews | 
[**apiReviewsReviewIdAnswerPost**](ReviewsApi.md#apireviewsreviewidanswerpost) | **POST** /api/reviews/{reviewId}/answer | 
[**apiReviewsReviewIdDelete**](ReviewsApi.md#apireviewsreviewiddelete) | **DELETE** /api/reviews/{reviewId} | 
[**apiReviewsReviewIdGet**](ReviewsApi.md#apireviewsreviewidget) | **GET** /api/reviews/{reviewId} | 
[**apiReviewsReviewIdImagesGet**](ReviewsApi.md#apireviewsreviewidimagesget) | **GET** /api/reviews/{reviewId}/images | 
[**apiReviewsVariantVariantIdGet**](ReviewsApi.md#apireviewsvariantvariantidget) | **GET** /api/reviews/variant/{variantId} | 
[**apiReviewsVariantVariantIdStatisticsGet**](ReviewsApi.md#apireviewsvariantvariantidstatisticsget) | **GET** /api/reviews/variant/{variantId}/statistics | 


# **apiReviewsGet**
> BaseResponseOfPagedResultOfReviewListItem apiReviewsGet(variantId, userId, minRating, maxRating, hasImages, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int minRating = 56; // int | 
final int maxRating = 56; // int | 
final bool hasImages = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiReviewsGet(variantId, userId, minRating, maxRating, hasImages, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **minRating** | **int**|  | [optional] 
 **maxRating** | **int**|  | [optional] 
 **hasImages** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfReviewListItem**](BaseResponseOfPagedResultOfReviewListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsImagesTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiReviewsImagesTemporaryPost(images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.apiReviewsImagesTemporaryPost(images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsImagesTemporaryPost: $e\n');
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

# **apiReviewsMeGet**
> BaseResponseOfListOfReviewResponse apiReviewsMeGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();

try {
    final response = api.apiReviewsMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfReviewResponse**](BaseResponseOfListOfReviewResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsPost**
> BaseResponseOfBulkActionResultOfGuid apiReviewsPost(createReviewRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final CreateReviewRequest createReviewRequest = ; // CreateReviewRequest | 

try {
    final response = api.apiReviewsPost(createReviewRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createReviewRequest** | [**CreateReviewRequest**](CreateReviewRequest.md)|  | 

### Return type

[**BaseResponseOfBulkActionResultOfGuid**](BaseResponseOfBulkActionResultOfGuid.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsReviewIdAnswerPost**
> BaseResponseOfstring apiReviewsReviewIdAnswerPost(reviewId, answerReviewRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String reviewId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final AnswerReviewRequest answerReviewRequest = ; // AnswerReviewRequest | 

try {
    final response = api.apiReviewsReviewIdAnswerPost(reviewId, answerReviewRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsReviewIdAnswerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **String**|  | 
 **answerReviewRequest** | [**AnswerReviewRequest**](AnswerReviewRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsReviewIdDelete**
> BaseResponseOfstring apiReviewsReviewIdDelete(reviewId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String reviewId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiReviewsReviewIdDelete(reviewId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsReviewIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsReviewIdGet**
> BaseResponseOfReviewDetailResponse apiReviewsReviewIdGet(reviewId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String reviewId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiReviewsReviewIdGet(reviewId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsReviewIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **String**|  | 

### Return type

[**BaseResponseOfReviewDetailResponse**](BaseResponseOfReviewDetailResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsReviewIdImagesGet**
> BaseResponseOfListOfMediaResponse apiReviewsReviewIdImagesGet(reviewId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String reviewId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiReviewsReviewIdImagesGet(reviewId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsReviewIdImagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **String**|  | 

### Return type

[**BaseResponseOfListOfMediaResponse**](BaseResponseOfListOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsVariantVariantIdGet**
> BaseResponseOfListOfReviewResponse apiReviewsVariantVariantIdGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiReviewsVariantVariantIdGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsVariantVariantIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfListOfReviewResponse**](BaseResponseOfListOfReviewResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReviewsVariantVariantIdStatisticsGet**
> BaseResponseOfReviewStatisticsResponse apiReviewsVariantVariantIdStatisticsGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getReviewsApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiReviewsVariantVariantIdStatisticsGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->apiReviewsVariantVariantIdStatisticsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfReviewStatisticsResponse**](BaseResponseOfReviewStatisticsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

