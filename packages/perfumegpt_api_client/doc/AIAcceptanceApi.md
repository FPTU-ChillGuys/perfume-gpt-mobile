# perfumegpt_api_client.api.AIAcceptanceApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aIAcceptanceControllerClickAIAcceptance**](AIAcceptanceApi.md#aiacceptancecontrollerclickaiacceptance) | **POST** /ai-acceptance/click/{aiAcceptanceId} | Đánh dấu click chấp nhận theo aiAcceptanceId
[**aIAcceptanceControllerCreateAIAcceptanceRecord**](AIAcceptanceApi.md#aiacceptancecontrollercreateaiacceptancerecord) | **POST** /ai-acceptance/record/{userId} | Tạo bản ghi chấp nhận AI mới
[**aIAcceptanceControllerCreatePendingResponseAcceptance**](AIAcceptanceApi.md#aiacceptancecontrollercreatependingresponseacceptance) | **POST** /ai-acceptance/response | Tạo AI acceptance pending theo response-level (backend-first)
[**aIAcceptanceControllerGetAIAcceptanceMetrics**](AIAcceptanceApi.md#aiacceptancecontrollergetaiacceptancemetrics) | **GET** /ai-acceptance/metrics | Lấy metrics acceptance theo context/user (accepted/pending/no-click)
[**aIAcceptanceControllerGetAIAcceptanceRate**](AIAcceptanceApi.md#aiacceptancecontrollergetaiacceptancerate) | **GET** /ai-acceptance/rate | Lấy tỷ lệ chấp nhận AI theo trạng thái
[**aIAcceptanceControllerGetAIAcceptanceRateByUserId**](AIAcceptanceApi.md#aiacceptancecontrollergetaiacceptanceratebyuserid) | **GET** /ai-acceptance/rate/{userId} | Lấy tỷ lệ chấp nhận AI theo user ID
[**aIAcceptanceControllerGetAIAcceptanceStatus**](AIAcceptanceApi.md#aiacceptancecontrollergetaiacceptancestatus) | **GET** /ai-acceptance/status/{userId} | Lấy trạng thái chấp nhận AI theo user ID
[**aIAcceptanceControllerGetAllAIAcceptanceStatus**](AIAcceptanceApi.md#aiacceptancecontrollergetallaiacceptancestatus) | **GET** /ai-acceptance/status/all | Lấy trạng thái chấp nhận AI của tất cả người dùng
[**aIAcceptanceControllerGetVisibleAIAcceptanceStatus**](AIAcceptanceApi.md#aiacceptancecontrollergetvisibleaiacceptancestatus) | **GET** /ai-acceptance/visible/{userId} | Lấy trạng thái AI acceptance có thể hiển thị (accepted ngay, false sau 24h)
[**aIAcceptanceControllerUpdateAIAcceptanceData**](AIAcceptanceApi.md#aiacceptancecontrollerupdateaiacceptancedata) | **POST** /ai-acceptance/{id} | Cập nhật trạng thái chấp nhận AI theo ID
[**aIAcceptanceControllerUpdateAIAcceptanceDataByUserIdAndCartId**](AIAcceptanceApi.md#aiacceptancecontrollerupdateaiacceptancedatabyuseridandcartid) | **PUT** /ai-acceptance/user/{userId} | Cập nhật trạng thái chấp nhận AI theo ID người dùng và ID cart item


# **aIAcceptanceControllerClickAIAcceptance**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerClickAIAcceptance(aiAcceptanceId, userId)

Đánh dấu click chấp nhận theo aiAcceptanceId

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String aiAcceptanceId = aiAcceptanceId_example; // String | ID bản ghi AI acceptance
final String userId = userId_example; // String | ID user để kiểm tra quyền sở hữu (optional)

try {
    final response = api.aIAcceptanceControllerClickAIAcceptance(aiAcceptanceId, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerClickAIAcceptance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiAcceptanceId** | **String**| ID bản ghi AI acceptance | 
 **userId** | **String**| ID user để kiểm tra quyền sở hữu (optional) | [optional] 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerCreateAIAcceptanceRecord**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerCreateAIAcceptanceRecord(userId, status, cartItemId)

Tạo bản ghi chấp nhận AI mới

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String userId = userId_example; // String | ID của người dùng
final String status = status_example; // String | Trạng thái chấp nhận (true/false)
final String cartItemId = cartItemId_example; // String | ID cart item liên quan (tùy chọn)

try {
    final response = api.aIAcceptanceControllerCreateAIAcceptanceRecord(userId, status, cartItemId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerCreateAIAcceptanceRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 
 **status** | **String**| Trạng thái chấp nhận (true/false) | 
 **cartItemId** | **String**| ID cart item liên quan (tùy chọn) | [optional] 

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
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
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
> TrendControllerGetProductTrendJobResult200Response aIAcceptanceControllerGetAIAcceptanceMetrics(contextType, userId)

Lấy metrics acceptance theo context/user (accepted/pending/no-click)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String contextType = contextType_example; // String | 
final String userId = userId_example; // String | 

try {
    final response = api.aIAcceptanceControllerGetAIAcceptanceMetrics(contextType, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAIAcceptanceMetrics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contextType** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 

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
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
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

# **aIAcceptanceControllerGetAIAcceptanceRateByUserId**
> AIAcceptanceControllerGetAIAcceptanceRate200Response aIAcceptanceControllerGetAIAcceptanceRateByUserId(userId, contextType)

Lấy tỷ lệ chấp nhận AI theo user ID

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String userId = userId_example; // String | ID của người dùng
final String contextType = contextType_example; // String | Lọc theo ngữ cảnh

try {
    final response = api.aIAcceptanceControllerGetAIAcceptanceRateByUserId(userId, contextType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAIAcceptanceRateByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 
 **contextType** | **String**| Lọc theo ngữ cảnh | [optional] 

### Return type

[**AIAcceptanceControllerGetAIAcceptanceRate200Response**](AIAcceptanceControllerGetAIAcceptanceRate200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerGetAIAcceptanceStatus**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerGetAIAcceptanceStatus(userId)

Lấy trạng thái chấp nhận AI theo user ID

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.aIAcceptanceControllerGetAIAcceptanceStatus(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAIAcceptanceStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerGetAllAIAcceptanceStatus**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerGetAllAIAcceptanceStatus(userId)

Lấy trạng thái chấp nhận AI của tất cả người dùng

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final Object userId = ; // Object | ID của người dùng

try {
    final response = api.aIAcceptanceControllerGetAllAIAcceptanceStatus(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetAllAIAcceptanceStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**Object**](.md)| ID của người dùng | 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerGetVisibleAIAcceptanceStatus**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerGetVisibleAIAcceptanceStatus(userId, contextType)

Lấy trạng thái AI acceptance có thể hiển thị (accepted ngay, false sau 24h)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String userId = userId_example; // String | ID của người dùng
final String contextType = contextType_example; // String | Lọc theo ngữ cảnh

try {
    final response = api.aIAcceptanceControllerGetVisibleAIAcceptanceStatus(userId, contextType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerGetVisibleAIAcceptanceStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 
 **contextType** | **String**| Lọc theo ngữ cảnh | [optional] 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerUpdateAIAcceptanceData**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerUpdateAIAcceptanceData(id, status, cartItemId)

Cập nhật trạng thái chấp nhận AI theo ID

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String id = id_example; // String | ID bản ghi AI acceptance
final String status = status_example; // String | Trạng thái (true/false)
final String cartItemId = cartItemId_example; // String | ID cart item liên quan (tùy chọn)

try {
    final response = api.aIAcceptanceControllerUpdateAIAcceptanceData(id, status, cartItemId);
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
 **cartItemId** | **String**| ID cart item liên quan (tùy chọn) | [optional] 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIAcceptanceControllerUpdateAIAcceptanceDataByUserIdAndCartId**
> AIAcceptanceControllerCreatePendingResponseAcceptance200Response aIAcceptanceControllerUpdateAIAcceptanceDataByUserIdAndCartId(userId, status, cartItemId)

Cập nhật trạng thái chấp nhận AI theo ID người dùng và ID cart item

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAIAcceptanceApi();
final String userId = userId_example; // String | ID của người dùng
final String status = status_example; // String | Trạng thái (true/false)
final String cartItemId = cartItemId_example; // String | ID cart item liên quan (tùy chọn)

try {
    final response = api.aIAcceptanceControllerUpdateAIAcceptanceDataByUserIdAndCartId(userId, status, cartItemId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIAcceptanceApi->aIAcceptanceControllerUpdateAIAcceptanceDataByUserIdAndCartId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 
 **status** | **String**| Trạng thái (true/false) | 
 **cartItemId** | **String**| ID cart item liên quan (tùy chọn) | [optional] 

### Return type

[**AIAcceptanceControllerCreatePendingResponseAcceptance200Response**](AIAcceptanceControllerCreatePendingResponseAcceptance200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

