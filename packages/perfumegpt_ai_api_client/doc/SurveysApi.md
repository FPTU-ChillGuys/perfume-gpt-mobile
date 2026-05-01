# perfumegpt_ai_api_client.api.SurveysApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**surveyControllerChatSurveyV5**](SurveysApi.md#surveycontrollerchatsurveyv5) | **POST** /surveys/user/v5 | Trả lời survey V5 — Hybrid (AI phân tích + Query-based + Ranking score)
[**surveyControllerCheckFirstTime**](SurveysApi.md#surveycontrollercheckfirsttime) | **GET** /surveys/user/{userId}/check-first-time | Kiểm tra người dùng đã làm survey lần đầu chưa
[**surveyControllerCreateQuestionFromAttribute**](SurveysApi.md#surveycontrollercreatequestionfromattribute) | **POST** /surveys/questions/from-attribute | Tạo câu hỏi survey từ thuộc tính (auto-generate query answers)
[**surveyControllerCreateSurveyQues**](SurveysApi.md#surveycontrollercreatesurveyques) | **POST** /surveys/questions | Tạo câu hỏi survey mới
[**surveyControllerCreateSurveyQueses**](SurveysApi.md#surveycontrollercreatesurveyqueses) | **POST** /surveys/questions/list | Tạo nhiều câu hỏi survey cùng lúc
[**surveyControllerDeleteSurveyQuestion**](SurveysApi.md#surveycontrollerdeletesurveyquestion) | **DELETE** /surveys/questions/{id} | Xóa câu hỏi survey (soft delete)
[**surveyControllerGetAllSurveys**](SurveysApi.md#surveycontrollergetallsurveys) | **GET** /surveys/questions | Lấy danh sách câu hỏi survey
[**surveyControllerGetAttributeTypes**](SurveysApi.md#surveycontrollergetattributetypes) | **GET** /surveys/attributes | Lấy danh sách loại thuộc tính cho survey
[**surveyControllerGetAttributeValues**](SurveysApi.md#surveycontrollergetattributevalues) | **GET** /surveys/attributes/{type}/values | Lấy giá trị của 1 loại thuộc tính
[**surveyControllerGetSurveyHistoryListByUserId**](SurveysApi.md#surveycontrollergetsurveyhistorylistbyuserid) | **GET** /surveys/user/{userId}/history | Lấy danh sách lịch sử tất cả các lần trả lời survey của người dùng
[**surveyControllerGetSurveyQuesAnwsByUserId**](SurveysApi.md#surveycontrollergetsurveyquesanwsbyuserid) | **GET** /surveys/user/{userId} | Lấy tất cả câu hỏi và câu trả lời survey của người dùng
[**surveyControllerGetSurveyQuesById**](SurveysApi.md#surveycontrollergetsurveyquesbyid) | **GET** /surveys/questions/{id} | Lấy câu hỏi survey theo ID
[**surveyControllerReorderQuestions**](SurveysApi.md#surveycontrollerreorderquestions) | **PATCH** /surveys/questions/reorder | Sắp xếp lại thứ tự câu hỏi survey
[**surveyControllerUpdateSurveyAnswer**](SurveysApi.md#surveycontrollerupdatesurveyanswer) | **PUT** /surveys/questions/{id} | Cập nhật câu hỏi survey (questionType và/hoặc answers)


# **surveyControllerChatSurveyV5**
> SurveyControllerCreateSurveyQues200Response surveyControllerChatSurveyV5(surveyQuesAnsDetailRequest, userId)

Trả lời survey V5 — Hybrid (AI phân tích + Query-based + Ranking score)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
final List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest = ; // List<SurveyQuesAnsDetailRequest> | 
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.surveyControllerChatSurveyV5(surveyQuesAnsDetailRequest, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerChatSurveyV5: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surveyQuesAnsDetailRequest** | [**List&lt;SurveyQuesAnsDetailRequest&gt;**](SurveyQuesAnsDetailRequest.md)|  | 
 **userId** | **String**| ID của người dùng | [optional] 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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

# **surveyControllerCreateQuestionFromAttribute**
> SurveyControllerCreateSurveyQues200Response surveyControllerCreateQuestionFromAttribute(createQuestionFromAttributeRequest)

Tạo câu hỏi survey từ thuộc tính (auto-generate query answers)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
final CreateQuestionFromAttributeRequest createQuestionFromAttributeRequest = ; // CreateQuestionFromAttributeRequest | 

try {
    final response = api.surveyControllerCreateQuestionFromAttribute(createQuestionFromAttributeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerCreateQuestionFromAttribute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createQuestionFromAttributeRequest** | [**CreateQuestionFromAttributeRequest**](CreateQuestionFromAttributeRequest.md)|  | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerCreateSurveyQues**
> SurveyControllerCreateSurveyQues200Response surveyControllerCreateSurveyQues(surveyQuestionRequest)

Tạo câu hỏi survey mới

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerCreateSurveyQueses**
> SurveyControllerCreateSurveyQues200Response surveyControllerCreateSurveyQueses(surveyQuestionRequest)

Tạo nhiều câu hỏi survey cùng lúc

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();

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

# **surveyControllerGetAttributeTypes**
> SurveyControllerGetAttributeTypes200Response surveyControllerGetAttributeTypes()

Lấy danh sách loại thuộc tính cho survey

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();

try {
    final response = api.surveyControllerGetAttributeTypes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerGetAttributeTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SurveyControllerGetAttributeTypes200Response**](SurveyControllerGetAttributeTypes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerGetAttributeValues**
> SurveyControllerGetAttributeValues200Response surveyControllerGetAttributeValues(type)

Lấy giá trị của 1 loại thuộc tính

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
final String type = type_example; // String | Loại thuộc tính (gender, brand, category, origin, concentration, note, family, attribute, budget)

try {
    final response = api.surveyControllerGetAttributeValues(type);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerGetAttributeValues: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Loại thuộc tính (gender, brand, category, origin, concentration, note, family, attribute, budget) | 

### Return type

[**SurveyControllerGetAttributeValues200Response**](SurveyControllerGetAttributeValues200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerGetSurveyHistoryListByUserId**
> SurveyControllerGetSurveyHistoryListByUserId200Response surveyControllerGetSurveyHistoryListByUserId(userId)

Lấy danh sách lịch sử tất cả các lần trả lời survey của người dùng

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.surveyControllerGetSurveyHistoryListByUserId(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerGetSurveyHistoryListByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 

### Return type

[**SurveyControllerGetSurveyHistoryListByUserId200Response**](SurveyControllerGetSurveyHistoryListByUserId200Response.md)

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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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

# **surveyControllerReorderQuestions**
> SurveyControllerReorderQuestions200Response surveyControllerReorderQuestions(reorderQuestionsRequest)

Sắp xếp lại thứ tự câu hỏi survey

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
final ReorderQuestionsRequest reorderQuestionsRequest = ; // ReorderQuestionsRequest | 

try {
    final response = api.surveyControllerReorderQuestions(reorderQuestionsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SurveysApi->surveyControllerReorderQuestions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reorderQuestionsRequest** | [**ReorderQuestionsRequest**](ReorderQuestionsRequest.md)|  | 

### Return type

[**SurveyControllerReorderQuestions200Response**](SurveyControllerReorderQuestions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **surveyControllerUpdateSurveyAnswer**
> SurveyControllerGetSurveyQuesById200Response surveyControllerUpdateSurveyAnswer(id, surveyQuestionRequest)

Cập nhật câu hỏi survey (questionType và/hoặc answers)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getSurveysApi();
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

