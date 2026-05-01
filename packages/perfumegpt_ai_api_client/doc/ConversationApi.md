# perfumegpt_ai_api_client.api.ConversationApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conversationControllerChat**](ConversationApi.md#conversationcontrollerchat) | **POST** /conversation/chat/v10 | Chat với AI (Advanced V10 logic)
[**conversationControllerChatStaff**](ConversationApi.md#conversationcontrollerchatstaff) | **POST** /conversation/chat/v10-staff | Chat V10 Staff (Quick Counter Consultation Mode)
[**conversationControllerChatV11**](ConversationApi.md#conversationcontrollerchatv11) | **POST** /conversation/chat/v11 | Chat với AI (V11 — individual message persistence)
[**conversationControllerChatV11Staff**](ConversationApi.md#conversationcontrollerchatv11staff) | **POST** /conversation/chat/v11-staff | Chat V11 Staff (Quick Counter Consultation Mode)
[**conversationControllerGetAllConversations**](ConversationApi.md#conversationcontrollergetallconversations) | **GET** /conversation | Lấy tất cả cuộc hội thoại
[**conversationControllerGetAllConversationsPaginated**](ConversationApi.md#conversationcontrollergetallconversationspaginated) | **GET** /conversation/list/paged | Lấy danh sách hội thoại có phân trang
[**conversationControllerGetConversationById**](ConversationApi.md#conversationcontrollergetconversationbyid) | **GET** /conversation/{id} | Lấy cuộc hội thoại theo ID
[**conversationControllerGetMyConversationHistory**](ConversationApi.md#conversationcontrollergetmyconversationhistory) | **GET** /conversation/my/history | Lấy lịch sử chat của user hiện tại


# **conversationControllerChat**
> ConversationControllerGetAllConversations200Response conversationControllerChat(chatRequest)

Chat với AI (Advanced V10 logic)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ChatRequest chatRequest = ; // ChatRequest | 

try {
    final response = api.conversationControllerChat(chatRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatRequest** | [**ChatRequest**](ChatRequest.md)|  | 

### Return type

[**ConversationControllerGetAllConversations200Response**](ConversationControllerGetAllConversations200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerChatStaff**
> ConversationControllerGetAllConversations200Response conversationControllerChatStaff(chatRequest)

Chat V10 Staff (Quick Counter Consultation Mode)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ChatRequest chatRequest = ; // ChatRequest | 

try {
    final response = api.conversationControllerChatStaff(chatRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerChatStaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatRequest** | [**ChatRequest**](ChatRequest.md)|  | 

### Return type

[**ConversationControllerGetAllConversations200Response**](ConversationControllerGetAllConversations200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerChatV11**
> ConversationControllerChatV11200Response conversationControllerChatV11(chatRequest)

Chat với AI (V11 — individual message persistence)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ChatRequest chatRequest = ; // ChatRequest | 

try {
    final response = api.conversationControllerChatV11(chatRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerChatV11: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatRequest** | [**ChatRequest**](ChatRequest.md)|  | 

### Return type

[**ConversationControllerChatV11200Response**](ConversationControllerChatV11200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerChatV11Staff**
> ConversationControllerChatV11200Response conversationControllerChatV11Staff(chatRequest)

Chat V11 Staff (Quick Counter Consultation Mode)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final ChatRequest chatRequest = ; // ChatRequest | 

try {
    final response = api.conversationControllerChatV11Staff(chatRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerChatV11Staff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatRequest** | [**ChatRequest**](ChatRequest.md)|  | 

### Return type

[**ConversationControllerChatV11200Response**](ConversationControllerChatV11200Response.md)

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
> ConversationControllerGetMyConversationHistory200Response conversationControllerGetAllConversationsPaginated(pageNumber, pageSize, sortOrder, isDescending, userId)

Lấy danh sách hội thoại có phân trang

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String userId = userId_example; // String | ID người dùng

try {
    final response = api.conversationControllerGetAllConversationsPaginated(pageNumber, pageSize, sortOrder, isDescending, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerGetAllConversationsPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **userId** | **String**| ID người dùng | [optional] 

### Return type

[**ConversationControllerGetMyConversationHistory200Response**](ConversationControllerGetMyConversationHistory200Response.md)

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversationControllerGetMyConversationHistory**
> ConversationControllerGetMyConversationHistory200Response conversationControllerGetMyConversationHistory(pageNumber, pageSize, sortOrder, isDescending, userId)

Lấy lịch sử chat của user hiện tại

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getConversationApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String userId = userId_example; // String | Guest userId (nếu chưa đăng nhập)

try {
    final response = api.conversationControllerGetMyConversationHistory(pageNumber, pageSize, sortOrder, isDescending, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConversationApi->conversationControllerGetMyConversationHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **userId** | **String**| Guest userId (nếu chưa đăng nhập) | [optional] 

### Return type

[**ConversationControllerGetMyConversationHistory200Response**](ConversationControllerGetMyConversationHistory200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

