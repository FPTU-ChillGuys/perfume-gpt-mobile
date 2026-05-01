# perfumegpt_ai_api_client.api.ReviewsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewControllerAddReviewLog**](ReviewsApi.md#reviewcontrolleraddreviewlog) | **POST** /reviews/logs | Thêm review log
[**reviewControllerCreateReviewSummaryJob**](ReviewsApi.md#reviewcontrollercreatereviewsummaryjob) | **GET** /reviews/summary/job/{variantId} | Khởi tạo job để tóm tắt đánh giá theo variant ID
[**reviewControllerGetAllReviewLogs**](ReviewsApi.md#reviewcontrollergetallreviewlogs) | **GET** /reviews/logs | Lấy tất cả review logs
[**reviewControllerGetLatestReviewLogByVariantId**](ReviewsApi.md#reviewcontrollergetlatestreviewlogbyvariantid) | **GET** /reviews/logs/latest/variant/{variantId} | Lấy review log mới nhất theo variant ID
[**reviewControllerGetReviewLogById**](ReviewsApi.md#reviewcontrollergetreviewlogbyid) | **GET** /reviews/logs/{id} | Lấy review log theo ID
[**reviewControllerGetReviewLogsByVariantId**](ReviewsApi.md#reviewcontrollergetreviewlogsbyvariantid) | **GET** /reviews/logs/variant/{variantId} | Lấy review logs theo variant ID
[**reviewControllerGetReviewSummaryByVariantId**](ReviewsApi.md#reviewcontrollergetreviewsummarybyvariantid) | **GET** /reviews/summary/{variantId} | Tóm tắt đánh giá bằng AI theo variant ID
[**reviewControllerGetReviewSummaryFromAllVariant**](ReviewsApi.md#reviewcontrollergetreviewsummaryfromallvariant) | **GET** /reviews/summary/all | Tóm tắt đánh giá bằng AI cho tất cả variant
[**reviewControllerGetReviewSummaryJobResult**](ReviewsApi.md#reviewcontrollergetreviewsummaryjobresult) | **GET** /reviews/summary/job/result/{jobId} | Kiểm tra trạng thái hoàn thành của job tóm tắt đánh giá
[**reviewControllerGetReviews**](ReviewsApi.md#reviewcontrollergetreviews) | **GET** /reviews | Lấy danh sách đánh giá (phân trang)
[**reviewControllerGetStructuredReviewSummaryByVariantId**](ReviewsApi.md#reviewcontrollergetstructuredreviewsummarybyvariantid) | **GET** /reviews/summary/structured/{variantId} | Tóm tắt đánh giá có cấu trúc theo variant ID


# **reviewControllerAddReviewLog**
> ReviewControllerGetAllReviewLogs200Response reviewControllerAddReviewLog()

Thêm review log

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();

try {
    final response = api.reviewControllerAddReviewLog();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerAddReviewLog: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReviewControllerGetAllReviewLogs200Response**](ReviewControllerGetAllReviewLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerCreateReviewSummaryJob**
> SurveyControllerCreateSurveyQues200Response reviewControllerCreateReviewSummaryJob(variantId)

Khởi tạo job để tóm tắt đánh giá theo variant ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String variantId = variantId_example; // String | ID của variant sản phẩm

try {
    final response = api.reviewControllerCreateReviewSummaryJob(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerCreateReviewSummaryJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**| ID của variant sản phẩm | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetAllReviewLogs**
> ReviewControllerGetAllReviewLogs200Response reviewControllerGetAllReviewLogs()

Lấy tất cả review logs

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();

try {
    final response = api.reviewControllerGetAllReviewLogs();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetAllReviewLogs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReviewControllerGetAllReviewLogs200Response**](ReviewControllerGetAllReviewLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetLatestReviewLogByVariantId**
> ReviewControllerGetAllReviewLogs200Response reviewControllerGetLatestReviewLogByVariantId(variantId)

Lấy review log mới nhất theo variant ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String variantId = variantId_example; // String | ID của variant sản phẩm

try {
    final response = api.reviewControllerGetLatestReviewLogByVariantId(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetLatestReviewLogByVariantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**| ID của variant sản phẩm | 

### Return type

[**ReviewControllerGetAllReviewLogs200Response**](ReviewControllerGetAllReviewLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetReviewLogById**
> ReviewControllerGetAllReviewLogs200Response reviewControllerGetReviewLogById(id)

Lấy review log theo ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String id = id_example; // String | ID của review log

try {
    final response = api.reviewControllerGetReviewLogById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetReviewLogById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID của review log | 

### Return type

[**ReviewControllerGetAllReviewLogs200Response**](ReviewControllerGetAllReviewLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetReviewLogsByVariantId**
> ReviewControllerGetAllReviewLogs200Response reviewControllerGetReviewLogsByVariantId(variantId)

Lấy review logs theo variant ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String variantId = variantId_example; // String | ID của variant sản phẩm

try {
    final response = api.reviewControllerGetReviewLogsByVariantId(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetReviewLogsByVariantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**| ID của variant sản phẩm | 

### Return type

[**ReviewControllerGetAllReviewLogs200Response**](ReviewControllerGetAllReviewLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetReviewSummaryByVariantId**
> SurveyControllerCreateSurveyQues200Response reviewControllerGetReviewSummaryByVariantId(variantId)

Tóm tắt đánh giá bằng AI theo variant ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String variantId = variantId_example; // String | ID của variant sản phẩm

try {
    final response = api.reviewControllerGetReviewSummaryByVariantId(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetReviewSummaryByVariantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**| ID của variant sản phẩm | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetReviewSummaryFromAllVariant**
> SurveyControllerCreateSurveyQues200Response reviewControllerGetReviewSummaryFromAllVariant()

Tóm tắt đánh giá bằng AI cho tất cả variant

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();

try {
    final response = api.reviewControllerGetReviewSummaryFromAllVariant();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetReviewSummaryFromAllVariant: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetReviewSummaryJobResult**
> SurveyControllerReorderQuestions200Response reviewControllerGetReviewSummaryJobResult(jobId, variantId)

Kiểm tra trạng thái hoàn thành của job tóm tắt đánh giá

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String jobId = jobId_example; // String | 
final String variantId = variantId_example; // String | ID của variant sản phẩm đã dùng tạo job

try {
    final response = api.reviewControllerGetReviewSummaryJobResult(jobId, variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetReviewSummaryJobResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 
 **variantId** | **String**| ID của variant sản phẩm đã dùng tạo job | 

### Return type

[**SurveyControllerReorderQuestions200Response**](SurveyControllerReorderQuestions200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetReviews**
> ReviewControllerGetReviews200Response reviewControllerGetReviews(pageNumber, pageSize, sortOrder, isDescending, variantId, userId, status, minRating, maxRating, hasImages)

Lấy danh sách đánh giá (phân trang)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID variant sản phẩm
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID người dùng
final String status = status_example; // String | Trạng thái đánh giá
final num minRating = 8.14; // num | Số sao tối thiểu
final num maxRating = 8.14; // num | Số sao tối đa
final bool hasImages = true; // bool | Chỉ lấy đánh giá có hình ảnh

try {
    final response = api.reviewControllerGetReviews(pageNumber, pageSize, sortOrder, isDescending, variantId, userId, status, minRating, maxRating, hasImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetReviews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **variantId** | **String**| ID variant sản phẩm | [optional] 
 **userId** | **String**| ID người dùng | [optional] 
 **status** | **String**| Trạng thái đánh giá | [optional] 
 **minRating** | **num**| Số sao tối thiểu | [optional] 
 **maxRating** | **num**| Số sao tối đa | [optional] 
 **hasImages** | **bool**| Chỉ lấy đánh giá có hình ảnh | [optional] 

### Return type

[**ReviewControllerGetReviews200Response**](ReviewControllerGetReviews200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetStructuredReviewSummaryByVariantId**
> ReviewControllerGetStructuredReviewSummaryByVariantId200Response reviewControllerGetStructuredReviewSummaryByVariantId(variantId)

Tóm tắt đánh giá có cấu trúc theo variant ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getReviewsApi();
final String variantId = variantId_example; // String | ID của variant sản phẩm

try {
    final response = api.reviewControllerGetStructuredReviewSummaryByVariantId(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReviewsApi->reviewControllerGetStructuredReviewSummaryByVariantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**| ID của variant sản phẩm | 

### Return type

[**ReviewControllerGetStructuredReviewSummaryByVariantId200Response**](ReviewControllerGetStructuredReviewSummaryByVariantId200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

