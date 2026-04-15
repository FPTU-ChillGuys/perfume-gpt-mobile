# perfumegpt_api_client.api.SurveysApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**surveyControllerChatSurvey**](SurveysApi.md#surveycontrollerchatsurvey) | **POST** /surveys/user | Trả lời survey và nhận gợi ý AI
[**surveyControllerChatSurveyV2**](SurveysApi.md#surveycontrollerchatsurveyv2) | **POST** /surveys/user/v2 | Trả lời survey và nhận gợi ý AI (v2 - monolithic query)
[**surveyControllerChatSurveyV3**](SurveysApi.md#surveycontrollerchatsurveyv3) | **POST** /surveys/user/v3 | Trả lời survey và nhận gợi ý AI (v3 - per-question query, skip 0 products)
[**surveyControllerCheckFirstTime**](SurveysApi.md#surveycontrollercheckfirsttime) | **GET** /surveys/user/{userId}/check-first-time | Kiểm tra người dùng đã làm survey lần đầu chưa
[**surveyControllerCreateSurveyQues**](SurveysApi.md#surveycontrollercreatesurveyques) | **POST** /surveys/questions | Tạo câu hỏi survey mới
[**surveyControllerCreateSurveyQueses**](SurveysApi.md#surveycontrollercreatesurveyqueses) | **POST** /surveys/questions/list | Tạo nhiều câu hỏi survey cùng lúc
[**surveyControllerDeleteSurveyQuestion**](SurveysApi.md#surveycontrollerdeletesurveyquestion) | **DELETE** /surveys/questions/{id} | Xóa câu hỏi survey (soft delete)
[**surveyControllerGetAllSurveys**](SurveysApi.md#surveycontrollergetallsurveys) | **GET** /surveys/questions | Lấy danh sách câu hỏi survey
[**surveyControllerGetSurveyQuesAnwsByUserId**](SurveysApi.md#surveycontrollergetsurveyquesanwsbyuserid) | **GET** /surveys/user/{userId} | Lấy tất cả câu hỏi và câu trả lời survey của người dùng
[**surveyControllerGetSurveyQuesById**](SurveysApi.md#surveycontrollergetsurveyquesbyid) | **GET** /surveys/questions/{id} | Lấy câu hỏi survey theo ID
[**surveyControllerUpdateSurveyAnswer**](SurveysApi.md#surveycontrollerupdatesurveyanswer) | **PUT** /surveys/questions/{id} | Cập nhật câu hỏi survey (questionType và/hoặc answers)


# **surveyControllerChatSurvey**
> EmailControllerSendEmail200Response surveyControllerChatSurvey(surveyQuesAnsDetailRequest, userId)

Trả lời survey và nhận gợi ý AI

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest = ; // List<SurveyQuesAnsDetailRequest> | 
final String userId = userId_example; // String | ID của người dùng (optional, fallback from request fingerprint)

try {
    final response = api.surveyControllerChatSurvey(surveyQuesAnsDetailRequest, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerChatSurvey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surveyQuesAnsDetailRequest** | [**List&lt;SurveyQuesAnsDetailRequest&gt;**](SurveyQuesAnsDetailRequest.md)|  | 
 **userId** | **String**| ID của người dùng (optional, fallback from request fingerprint) | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerChatSurveyV2**
> EmailControllerSendEmail200Response surveyControllerChatSurveyV2(surveyQuesAnsDetailRequest, userId)

Trả lời survey và nhận gợi ý AI (v2 - monolithic query)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest = ; // List<SurveyQuesAnsDetailRequest> | 
final String userId = userId_example; // String | ID của người dùng (optional, fallback from request fingerprint)

try {
    final response = api.surveyControllerChatSurveyV2(surveyQuesAnsDetailRequest, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerChatSurveyV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surveyQuesAnsDetailRequest** | [**List&lt;SurveyQuesAnsDetailRequest&gt;**](SurveyQuesAnsDetailRequest.md)|  | 
 **userId** | **String**| ID của người dùng (optional, fallback from request fingerprint) | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerChatSurveyV3**
> EmailControllerSendEmail200Response surveyControllerChatSurveyV3(surveyQuesAnsDetailRequest, userId)

Trả lời survey và nhận gợi ý AI (v3 - per-question query, skip 0 products)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest = ; // List<SurveyQuesAnsDetailRequest> | 
final String userId = userId_example; // String | ID của người dùng (optional, fallback from request fingerprint)

try {
    final response = api.surveyControllerChatSurveyV3(surveyQuesAnsDetailRequest, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerChatSurveyV3: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surveyQuesAnsDetailRequest** | [**List&lt;SurveyQuesAnsDetailRequest&gt;**](SurveyQuesAnsDetailRequest.md)|  | 
 **userId** | **String**| ID của người dùng (optional, fallback from request fingerprint) | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerCheckFirstTime**
> SurveyControllerDeleteSurveyQuestion200Response surveyControllerCheckFirstTime(userId)

Kiểm tra người dùng đã làm survey lần đầu chưa

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.surveyControllerCheckFirstTime(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerCheckFirstTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 

### Return type

[**SurveyControllerDeleteSurveyQuestion200Response**](SurveyControllerDeleteSurveyQuestion200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerCreateSurveyQues**
> EmailControllerSendEmail200Response surveyControllerCreateSurveyQues(surveyQuestionRequest)

Tạo câu hỏi survey mới

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final SurveyQuestionRequest surveyQuestionRequest = ; // SurveyQuestionRequest | 

try {
    final response = api.surveyControllerCreateSurveyQues(surveyQuestionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerCreateSurveyQues: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surveyQuestionRequest** | [**SurveyQuestionRequest**](SurveyQuestionRequest.md)|  | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerCreateSurveyQueses**
> EmailControllerSendEmail200Response surveyControllerCreateSurveyQueses(surveyQuestionRequest)

Tạo nhiều câu hỏi survey cùng lúc

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final List<SurveyQuestionRequest> surveyQuestionRequest = ; // List<SurveyQuestionRequest> | 

try {
    final response = api.surveyControllerCreateSurveyQueses(surveyQuestionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerCreateSurveyQueses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surveyQuestionRequest** | [**List&lt;SurveyQuestionRequest&gt;**](SurveyQuestionRequest.md)|  | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerDeleteSurveyQuestion**
> SurveyControllerDeleteSurveyQuestion200Response surveyControllerDeleteSurveyQuestion(id)

Xóa câu hỏi survey (soft delete)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final String id = id_example; // String | ID câu hỏi cần xóa

try {
    final response = api.surveyControllerDeleteSurveyQuestion(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerDeleteSurveyQuestion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID câu hỏi cần xóa | 

### Return type

[**SurveyControllerDeleteSurveyQuestion200Response**](SurveyControllerDeleteSurveyQuestion200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerGetAllSurveys**
> SurveyControllerGetAllSurveys200Response surveyControllerGetAllSurveys()

Lấy danh sách câu hỏi survey

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();

try {
    final response = api.surveyControllerGetAllSurveys();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerGetAllSurveys: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SurveyControllerGetAllSurveys200Response**](SurveyControllerGetAllSurveys200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerGetSurveyQuesAnwsByUserId**
> SurveyControllerGetSurveyQuesAnwsByUserId200Response surveyControllerGetSurveyQuesAnwsByUserId(userId)

Lấy tất cả câu hỏi và câu trả lời survey của người dùng

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.surveyControllerGetSurveyQuesAnwsByUserId(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerGetSurveyQuesAnwsByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 

### Return type

[**SurveyControllerGetSurveyQuesAnwsByUserId200Response**](SurveyControllerGetSurveyQuesAnwsByUserId200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerGetSurveyQuesById**
> SurveyControllerGetSurveyQuesById200Response surveyControllerGetSurveyQuesById(id)

Lấy câu hỏi survey theo ID

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final String id = id_example; // String | ID câu hỏi

try {
    final response = api.surveyControllerGetSurveyQuesById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerGetSurveyQuesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID câu hỏi | 

### Return type

[**SurveyControllerGetSurveyQuesById200Response**](SurveyControllerGetSurveyQuesById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerUpdateSurveyAnswer**
> SurveyControllerGetSurveyQuesById200Response surveyControllerUpdateSurveyAnswer(id, surveyQuestionRequest)

Cập nhật câu hỏi survey (questionType và/hoặc answers)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSurveysApi();
final String id = id_example; // String | ID câu hỏi
final SurveyQuestionRequest surveyQuestionRequest = ; // SurveyQuestionRequest | 

try {
    final response = api.surveyControllerUpdateSurveyAnswer(id, surveyQuestionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerUpdateSurveyAnswer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID câu hỏi | 
 **surveyQuestionRequest** | [**SurveyQuestionRequest**](SurveyQuestionRequest.md)|  | 

### Return type

[**SurveyControllerGetSurveyQuesById200Response**](SurveyControllerGetSurveyQuesById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

