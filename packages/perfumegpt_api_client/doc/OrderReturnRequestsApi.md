# perfumegpt_api_client.api.OrderReturnRequestsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOrderreturnrequestsIdCompleteInspectionPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidcompleteinspectionpost) | **POST** /api/orderreturnrequests/{id}/complete-inspection | 
[**apiOrderreturnrequestsIdFailInspectionPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidfailinspectionpost) | **POST** /api/orderreturnrequests/{id}/fail-inspection | 
[**apiOrderreturnrequestsIdImagesGet**](OrderReturnRequestsApi.md#apiorderreturnrequestsidimagesget) | **GET** /api/orderreturnrequests/{id}/images | 
[**apiOrderreturnrequestsIdRefundPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidrefundpost) | **POST** /api/orderreturnrequests/{id}/refund | 
[**apiOrderreturnrequestsIdReviewPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidreviewpost) | **POST** /api/orderreturnrequests/{id}/review | 
[**apiOrderreturnrequestsIdStartInspectionPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidstartinspectionpost) | **POST** /api/orderreturnrequests/{id}/start-inspection | 
[**apiOrderreturnrequestsImagesTemporaryPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsimagestemporarypost) | **POST** /api/orderreturnrequests/images/temporary | 
[**apiOrderreturnrequestsPost**](OrderReturnRequestsApi.md#apiorderreturnrequestspost) | **POST** /api/orderreturnrequests | 


# **apiOrderreturnrequestsIdCompleteInspectionPost**
> BaseResponseOfstring apiOrderreturnrequestsIdCompleteInspectionPost(id, recordInspectionDto)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final RecordInspectionDto recordInspectionDto = ; // RecordInspectionDto | 

try {
    final response = api.apiOrderreturnrequestsIdCompleteInspectionPost(id, recordInspectionDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdCompleteInspectionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **recordInspectionDto** | [**RecordInspectionDto**](RecordInspectionDto.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdFailInspectionPost**
> BaseResponseOfstring apiOrderreturnrequestsIdFailInspectionPost(id, rejectInspectionDto)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final RejectInspectionDto rejectInspectionDto = ; // RejectInspectionDto | 

try {
    final response = api.apiOrderreturnrequestsIdFailInspectionPost(id, rejectInspectionDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdFailInspectionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **rejectInspectionDto** | [**RejectInspectionDto**](RejectInspectionDto.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdImagesGet**
> BaseResponseOfListOfMediaResponse apiOrderreturnrequestsIdImagesGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrderreturnrequestsIdImagesGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdImagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfListOfMediaResponse**](BaseResponseOfListOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdRefundPost**
> BaseResponseOfstring apiOrderreturnrequestsIdRefundPost(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrderreturnrequestsIdRefundPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdRefundPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdReviewPost**
> BaseResponseOfstring apiOrderreturnrequestsIdReviewPost(id, processInitialReturnDto)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ProcessInitialReturnDto processInitialReturnDto = ; // ProcessInitialReturnDto | 

try {
    final response = api.apiOrderreturnrequestsIdReviewPost(id, processInitialReturnDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdReviewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **processInitialReturnDto** | [**ProcessInitialReturnDto**](ProcessInitialReturnDto.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdStartInspectionPost**
> BaseResponseOfstring apiOrderreturnrequestsIdStartInspectionPost(id, startInspectionDto)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final StartInspectionDto startInspectionDto = ; // StartInspectionDto | 

try {
    final response = api.apiOrderreturnrequestsIdStartInspectionPost(id, startInspectionDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdStartInspectionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **startInspectionDto** | [**StartInspectionDto**](StartInspectionDto.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsImagesTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiOrderreturnrequestsImagesTemporaryPost(images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.apiOrderreturnrequestsImagesTemporaryPost(images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsImagesTemporaryPost: $e\n');
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

# **apiOrderreturnrequestsPost**
> BaseResponseOfstring apiOrderreturnrequestsPost(createReturnRequestDto)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final CreateReturnRequestDto createReturnRequestDto = ; // CreateReturnRequestDto | 

try {
    final response = api.apiOrderreturnrequestsPost(createReturnRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createReturnRequestDto** | [**CreateReturnRequestDto**](CreateReturnRequestDto.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

