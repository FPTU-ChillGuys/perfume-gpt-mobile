# perfumegpt_ai_api_client.api.AIAcceptanceApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aIAcceptanceControllerClickAIAcceptance**](AIAcceptanceApi.md#aiacceptancecontrollerclickaiacceptance) | **POST** /ai-acceptance/click/{aiAcceptanceId} | Đánh dấu click chấp nhận theo aiAcceptanceId
[**aIAcceptanceControllerCreatePendingResponseAcceptance**](AIAcceptanceApi.md#aiacceptancecontrollercreatependingresponseacceptance) | **POST** /ai-acceptance/response | Tạo AI acceptance pending theo response-level (backend-first)
[**aIAcceptanceControllerGetAIAcceptanceMetrics**](AIAcceptanceApi.md#aiacceptancecontrollergetaiacceptancemetrics) | **GET** /ai-acceptance/metrics | Lấy metrics acceptance theo context (accepted/pending/no-click)
[**aIAcceptanceControllerGetAIAcceptanceRate**](AIAcceptanceApi.md#aiacceptancecontrollergetaiacceptancerate) | **GET** /ai-acceptance/rate | Lấy tỷ lệ chấp nhận AI theo trạng thái
[**aIAcceptanceControllerGetAllAIAcceptanceStatus**](AIAcceptanceApi.md#aiacceptancecontrollergetallaiacceptancestatus) | **GET** /ai-acceptance/status/all | Lấy trạng thái chấp nhận AI của tất cả gợi ý
[**aIAcceptanceControllerUpdateAIAcceptanceData**](AIAcceptanceApi.md#aiacceptancecontrollerupdateaiacceptancedata) | **POST** /ai-acceptance/{id} | Cập nhật trạng thái chấp nhận AI theo ID


# **aIAcceptanceControllerClickAIAcceptance**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerClickAIAcceptance(aiAcceptanceId)

Đánh dấu click chấp nhận theo aiAcceptanceId

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAIAcceptanceApi();
final String aiAcceptanceId = aiAcceptanceId_example; // String | ID bản ghi AI acceptance

try {
    final response = api.aIAcceptanceControllerClickAIAcceptance(aiAcceptanceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerClickAIAcceptance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAcceptanceId** | **String**| ID bản ghi AI acceptance | 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerCreatePendingResponseAcceptance**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerCreatePendingResponseAcceptance(createResponseAIAcceptanceRequest)

Tạo AI acceptance pending theo response-level (backend-first)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAIAcceptanceApi();
final CreateResponseAIAcceptanceRequest createResponseAIAcceptanceRequest = ; // CreateResponseAIAcceptanceRequest | 

try {
    final response = api.aIAcceptanceControllerCreatePendingResponseAcceptance(createResponseAIAcceptanceRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerCreatePendingResponseAcceptance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createResponseAIAcceptanceRequest** | [**CreateResponseAIAcceptanceRequest**](CreateResponseAIAcceptanceRequest.md)|  | 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerGetAIAcceptanceMetrics**
> TrendControllerGetProductTrendJobResult200Response aIAcceptanceControllerGetAIAcceptanceMetrics(contextType)

Lấy metrics acceptance theo context (accepted/pending/no-click)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAIAcceptanceApi();
final String contextType = contextType_example; // String | 

try {
    final response = api.aIAcceptanceControllerGetAIAcceptanceMetrics(contextType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAIAcceptanceMetrics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contextType** | **String**|  | [optional] 

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerGetAIAcceptanceRate**
> AIAcceptanceControllerGetAIAcceptanceRate200Response aIAcceptanceControllerGetAIAcceptanceRate(isAccepted, contextType)

Lấy tỷ lệ chấp nhận AI theo trạng thái

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAIAcceptanceApi();
final String isAccepted = isAccepted_example; // String | Trạng thái chấp nhận (true/false)
final String contextType = contextType_example; // String | Lọc theo ngữ cảnh

try {
    final response = api.aIAcceptanceControllerGetAIAcceptanceRate(isAccepted, contextType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAIAcceptanceRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isAccepted** | **String**| Trạng thái chấp nhận (true/false) | 
 **contextType** | **String**| Lọc theo ngữ cảnh | [optional] 

### Return type

[**AIAcceptanceControllerGetAIAcceptanceRate200Response**](AIAcceptanceControllerGetAIAcceptanceRate200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerGetAllAIAcceptanceStatus**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerGetAllAIAcceptanceStatus()

Lấy trạng thái chấp nhận AI của tất cả gợi ý

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAIAcceptanceApi();

try {
    final response = api.aIAcceptanceControllerGetAllAIAcceptanceStatus();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAllAIAcceptanceStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerUpdateAIAcceptanceData**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerUpdateAIAcceptanceData(id, status)

Cập nhật trạng thái chấp nhận AI theo ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAIAcceptanceApi();
final String id = id_example; // String | ID bản ghi AI acceptance
final String status = status_example; // String | Trạng thái (true/false)

try {
    final response = api.aIAcceptanceControllerUpdateAIAcceptanceData(id, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerUpdateAIAcceptanceData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID bản ghi AI acceptance | 
 **status** | **String**| Trạng thái (true/false) | 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

