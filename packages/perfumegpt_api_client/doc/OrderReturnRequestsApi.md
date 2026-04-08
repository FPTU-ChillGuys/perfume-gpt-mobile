# perfumegpt_api_client.api.OrderReturnRequestsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOrderreturnrequestsGet**](OrderReturnRequestsApi.md#apiorderreturnrequestsget) | **GET** /api/orderreturnrequests | 
[**apiOrderreturnrequestsIdCancelPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidcancelpost) | **POST** /api/orderreturnrequests/{id}/cancel | 
[**apiOrderreturnrequestsIdCompleteInspectionPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidcompleteinspectionpost) | **POST** /api/orderreturnrequests/{id}/complete-inspection | 
[**apiOrderreturnrequestsIdFailInspectionPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidfailinspectionpost) | **POST** /api/orderreturnrequests/{id}/fail-inspection | 
[**apiOrderreturnrequestsIdGet**](OrderReturnRequestsApi.md#apiorderreturnrequestsidget) | **GET** /api/orderreturnrequests/{id} | 
[**apiOrderreturnrequestsIdPut**](OrderReturnRequestsApi.md#apiorderreturnrequestsidput) | **PUT** /api/orderreturnrequests/{id} | 
[**apiOrderreturnrequestsIdRefundPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidrefundpost) | **POST** /api/orderreturnrequests/{id}/refund | 
[**apiOrderreturnrequestsIdReviewPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidreviewpost) | **POST** /api/orderreturnrequests/{id}/review | 
[**apiOrderreturnrequestsIdStartInspectionPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsidstartinspectionpost) | **POST** /api/orderreturnrequests/{id}/start-inspection | 
[**apiOrderreturnrequestsMyRequestsGet**](OrderReturnRequestsApi.md#apiorderreturnrequestsmyrequestsget) | **GET** /api/orderreturnrequests/my-requests | 
[**apiOrderreturnrequestsPost**](OrderReturnRequestsApi.md#apiorderreturnrequestspost) | **POST** /api/orderreturnrequests | 
[**apiOrderreturnrequestsVideosTemporaryPost**](OrderReturnRequestsApi.md#apiorderreturnrequestsvideostemporarypost) | **POST** /api/orderreturnrequests/videos/temporary | 


# **apiOrderreturnrequestsGet**
> BaseResponseOfPagedResultOfOrderReturnRequestResponse apiOrderreturnrequestsGet(customerId, status, isRefunded, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String customerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ReturnRequestStatus status = ; // ReturnRequestStatus | 
final bool isRefunded = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiOrderreturnrequestsGet(customerId, status, isRefunded, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | [optional] 
 **status** | [**ReturnRequestStatus**](.md)|  | [optional] 
 **isRefunded** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfOrderReturnRequestResponse**](BaseResponseOfPagedResultOfOrderReturnRequestResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdCancelPost**
> BaseResponseOfstring apiOrderreturnrequestsIdCancelPost(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrderreturnrequestsIdCancelPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdCancelPost: $e\n');
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

# **apiOrderreturnrequestsIdGet**
> BaseResponseOfOrderReturnRequestResponse apiOrderreturnrequestsIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrderreturnrequestsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfOrderReturnRequestResponse**](BaseResponseOfOrderReturnRequestResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdPut**
> BaseResponseOfstring apiOrderreturnrequestsIdPut(id, updateReturnRequestDto)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateReturnRequestDto updateReturnRequestDto = ; // UpdateReturnRequestDto | 

try {
    final response = api.apiOrderreturnrequestsIdPut(id, updateReturnRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateReturnRequestDto** | [**UpdateReturnRequestDto**](UpdateReturnRequestDto.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrderreturnrequestsIdRefundPost**
> BaseResponseOfstring apiOrderreturnrequestsIdRefundPost(id, processRefundRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ProcessRefundRequest processRefundRequest = ; // ProcessRefundRequest | 

try {
    final response = api.apiOrderreturnrequestsIdRefundPost(id, processRefundRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsIdRefundPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **processRefundRequest** | [**ProcessRefundRequest**](ProcessRefundRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
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

# **apiOrderreturnrequestsMyRequestsGet**
> BaseResponseOfPagedResultOfOrderReturnRequestResponse apiOrderreturnrequestsMyRequestsGet(status, isRefunded, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final ReturnRequestStatus status = ; // ReturnRequestStatus | 
final bool isRefunded = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiOrderreturnrequestsMyRequestsGet(status, isRefunded, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsMyRequestsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**ReturnRequestStatus**](.md)|  | [optional] 
 **isRefunded** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfOrderReturnRequestResponse**](BaseResponseOfPagedResultOfOrderReturnRequestResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
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

# **apiOrderreturnrequestsVideosTemporaryPost**
> BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse apiOrderreturnrequestsVideosTemporaryPost(videos, images)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderReturnRequestsApi();
final List<MultipartFile> videos = /path/to/file.txt; // List<MultipartFile> | 
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.apiOrderreturnrequestsVideosTemporaryPost(videos, images);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderReturnRequestsApi->apiOrderreturnrequestsVideosTemporaryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videos** | [**List&lt;MultipartFile&gt;**](MultipartFile.md)|  | [optional] 
 **images** | [**List&lt;MultipartFile&gt;**](MultipartFile.md)|  | [optional] 

### Return type

[**BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse**](BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

