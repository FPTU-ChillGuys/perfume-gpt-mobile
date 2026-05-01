# perfumegpt_ai_api_client.api.AdminInstructionsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminInstructionControllerCreateInstruction**](AdminInstructionsApi.md#admininstructioncontrollercreateinstruction) | **POST** /admin/instructions | Tạo chỉ thị admin mới
[**adminInstructionControllerDeleteInstruction**](AdminInstructionsApi.md#admininstructioncontrollerdeleteinstruction) | **DELETE** /admin/instructions/{id} | Xóa chỉ thị admin
[**adminInstructionControllerGetAllInstructions**](AdminInstructionsApi.md#admininstructioncontrollergetallinstructions) | **GET** /admin/instructions | Lấy tất cả chỉ thị admin
[**adminInstructionControllerGetCombinedPromptByType**](AdminInstructionsApi.md#admininstructioncontrollergetcombinedpromptbytype) | **GET** /admin/instructions/combined/{type} | Gộp chỉ thị theo loại thành prompt cho AI
[**adminInstructionControllerGetInstructionById**](AdminInstructionsApi.md#admininstructioncontrollergetinstructionbyid) | **GET** /admin/instructions/{id} | Lấy chỉ thị admin theo ID
[**adminInstructionControllerGetInstructionsByType**](AdminInstructionsApi.md#admininstructioncontrollergetinstructionsbytype) | **GET** /admin/instructions/type/{type} | Lấy chỉ thị theo loại (system | prompt | rule)
[**adminInstructionControllerUpdateInstruction**](AdminInstructionsApi.md#admininstructioncontrollerupdateinstruction) | **PUT** /admin/instructions/{id} | Cập nhật chỉ thị admin


# **adminInstructionControllerCreateInstruction**
> AdminInstructionControllerCreateInstruction200Response adminInstructionControllerCreateInstruction(createAdminInstructionRequest)

Tạo chỉ thị admin mới

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();
final CreateAdminInstructionRequest createAdminInstructionRequest = ; // CreateAdminInstructionRequest | 

try {
    final response = api.adminInstructionControllerCreateInstruction(createAdminInstructionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerCreateInstruction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAdminInstructionRequest** | [**CreateAdminInstructionRequest**](CreateAdminInstructionRequest.md)|  | 

### Return type

[**AdminInstructionControllerCreateInstruction200Response**](AdminInstructionControllerCreateInstruction200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminInstructionControllerDeleteInstruction**
> SurveyControllerDeleteSurveyQuestion200Response adminInstructionControllerDeleteInstruction(id)

Xóa chỉ thị admin

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();
final String id = id_example; // String | ID của chỉ thị cần xóa

try {
    final response = api.adminInstructionControllerDeleteInstruction(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerDeleteInstruction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID của chỉ thị cần xóa | 

### Return type

[**SurveyControllerDeleteSurveyQuestion200Response**](SurveyControllerDeleteSurveyQuestion200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminInstructionControllerGetAllInstructions**
> AdminInstructionControllerGetAllInstructions200Response adminInstructionControllerGetAllInstructions()

Lấy tất cả chỉ thị admin

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();

try {
    final response = api.adminInstructionControllerGetAllInstructions();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerGetAllInstructions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdminInstructionControllerGetAllInstructions200Response**](AdminInstructionControllerGetAllInstructions200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminInstructionControllerGetCombinedPromptByType**
> SurveyControllerCreateSurveyQues200Response adminInstructionControllerGetCombinedPromptByType(type)

Gộp chỉ thị theo loại thành prompt cho AI

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();
final String type = type_example; // String | Loại chỉ thị cần gộp

try {
    final response = api.adminInstructionControllerGetCombinedPromptByType(type);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerGetCombinedPromptByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Loại chỉ thị cần gộp | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminInstructionControllerGetInstructionById**
> AdminInstructionControllerCreateInstruction200Response adminInstructionControllerGetInstructionById(id)

Lấy chỉ thị admin theo ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();
final String id = id_example; // String | ID của chỉ thị

try {
    final response = api.adminInstructionControllerGetInstructionById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerGetInstructionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID của chỉ thị | 

### Return type

[**AdminInstructionControllerCreateInstruction200Response**](AdminInstructionControllerCreateInstruction200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminInstructionControllerGetInstructionsByType**
> AdminInstructionControllerGetAllInstructions200Response adminInstructionControllerGetInstructionsByType(type)

Lấy chỉ thị theo loại (system | prompt | rule)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();
final String type = type_example; // String | Loại chỉ thị

try {
    final response = api.adminInstructionControllerGetInstructionsByType(type);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerGetInstructionsByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Loại chỉ thị | 

### Return type

[**AdminInstructionControllerGetAllInstructions200Response**](AdminInstructionControllerGetAllInstructions200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminInstructionControllerUpdateInstruction**
> AdminInstructionControllerCreateInstruction200Response adminInstructionControllerUpdateInstruction(id, updateAdminInstructionRequest)

Cập nhật chỉ thị admin

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminInstructionsApi();
final String id = id_example; // String | ID của chỉ thị cần cập nhật
final UpdateAdminInstructionRequest updateAdminInstructionRequest = ; // UpdateAdminInstructionRequest | 

try {
    final response = api.adminInstructionControllerUpdateInstruction(id, updateAdminInstructionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminInstructionsApi->adminInstructionControllerUpdateInstruction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID của chỉ thị cần cập nhật | 
 **updateAdminInstructionRequest** | [**UpdateAdminInstructionRequest**](UpdateAdminInstructionRequest.md)|  | 

### Return type

[**AdminInstructionControllerCreateInstruction200Response**](AdminInstructionControllerCreateInstruction200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

