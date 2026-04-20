# perfumegpt_ai_api_client.api.ConversationApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conversationControllerConversationV10**](ConversationApi.md#conversationcontrollerconversationv10) | **POST** /conversation/chat/v10 | Chat V10 (Profile-first + Structured Search)
[**conversationControllerConversationV10Staff**](ConversationApi.md#conversationcontrollerconversationv10staff) | **POST** /conversation/chat/v10-staff | Chat V10 Staff (Quick Counter Consultation Mode)
[**conversationControllerConversationV8**](ConversationApi.md#conversationcontrollerconversationv8) | **POST** /conversation/chat/v8 | Chat V8
[**conversationControllerGetAllConversations**](ConversationApi.md#conversationcontrollergetallconversations) | **GET** /conversation | Lấy tất cả cuộc hội thoại
[**conversationControllerGetAllConversationsPaginated**](ConversationApi.md#conversationcontrollergetallconversationspaginated) | **GET** /conversation/list/paged | Lấy danh sách cuộc hội thoại có phân trang
[**conversationControllerGetConversationById**](ConversationApi.md#conversationcontrollergetconversationbyid) | **GET** /conversation/{id} | Lấy cuộc hội thoại theo ID


# **conversationControllerConversationV10**
> ConversationControllerConversationV8200Response conversationControllerConversationV10(conversationRequestDto)

Chat V10 (Profile-first + Structured Search)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ConversationRequestDto conversationRequestDto = ; // ConversationRequestDto | 

try {
    final response = api.conversationControllerConversationV10(conversationRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerConversationV10: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationRequestDto** | [**ConversationRequestDto**](ConversationRequestDto.md)|  | 

### Return type

[**ConversationControllerConversationV8200Response**](ConversationControllerConversationV8200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerConversationV10Staff**
> ConversationControllerConversationV8200Response conversationControllerConversationV10Staff(conversationRequestDto)

Chat V10 Staff (Quick Counter Consultation Mode)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ConversationRequestDto conversationRequestDto = ; // ConversationRequestDto | 

try {
    final response = api.conversationControllerConversationV10Staff(conversationRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerConversationV10Staff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationRequestDto** | [**ConversationRequestDto**](ConversationRequestDto.md)|  | 

### Return type

[**ConversationControllerConversationV8200Response**](ConversationControllerConversationV8200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerConversationV8**
> ConversationControllerConversationV8200Response conversationControllerConversationV8(conversationRequestDto)

Chat V8

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ConversationRequestDto conversationRequestDto = ; // ConversationRequestDto | 

try {
    final response = api.conversationControllerConversationV8(conversationRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerConversationV8: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationRequestDto** | [**ConversationRequestDto**](ConversationRequestDto.md)|  | 

### Return type

[**ConversationControllerConversationV8200Response**](ConversationControllerConversationV8200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerGetAllConversations**
> ConversationControllerGetAllConversations200Response conversationControllerGetAllConversations()

Lấy tất cả cuộc hội thoại

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();

try {
    final response = api.conversationControllerGetAllConversations();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerGetAllConversations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConversationControllerGetAllConversations200Response**](ConversationControllerGetAllConversations200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerGetAllConversationsPaginated**
> ConversationControllerGetAllConversationsPaginated200Response conversationControllerGetAllConversationsPaginated(pageNumber, pageSize, userId)

Lấy danh sách cuộc hội thoại có phân trang

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final num pageNumber = 8.14; // num | Số trang (bắt đầu từ 1)
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Lọc theo user ID

try {
    final response = api.conversationControllerGetAllConversationsPaginated(pageNumber, pageSize, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerGetAllConversationsPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang (bắt đầu từ 1) | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **userId** | **String**| Lọc theo user ID | [optional] 

### Return type

[**ConversationControllerGetAllConversationsPaginated200Response**](ConversationControllerGetAllConversationsPaginated200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerGetConversationById**
> conversationControllerGetConversationById(id)

Lấy cuộc hội thoại theo ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final String id = id_example; // String | 

try {
    api.conversationControllerGetConversationById(id);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerGetConversationById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

