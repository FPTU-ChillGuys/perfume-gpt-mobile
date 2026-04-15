# perfumegpt_api_client.api.OrderCancelRequestsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOrdercancelrequestsGet**](OrderCancelRequestsApi.md#apiordercancelrequestsget) | **GET** /api/ordercancelrequests | 
[**apiOrdercancelrequestsIdGet**](OrderCancelRequestsApi.md#apiordercancelrequestsidget) | **GET** /api/ordercancelrequests/{id} | 
[**apiOrdercancelrequestsIdProcessPost**](OrderCancelRequestsApi.md#apiordercancelrequestsidprocesspost) | **POST** /api/ordercancelrequests/{id}/process | 
[**apiOrdercancelrequestsMyRequestsGet**](OrderCancelRequestsApi.md#apiordercancelrequestsmyrequestsget) | **GET** /api/ordercancelrequests/my-requests | 


# **apiOrdercancelrequestsGet**
> BaseResponseOfPagedResultOfOrderCancelRequestResponse apiOrdercancelrequestsGet(status, isRefundRequired, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderCancelRequestsApi();
final CancelRequestStatus status = ; // CancelRequestStatus | 
final bool isRefundRequired = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiOrdercancelrequestsGet(status, isRefundRequired, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderCancelRequestsApi->apiOrdercancelrequestsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**CancelRequestStatus**](.md)|  | [optional] 
 **isRefundRequired** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfOrderCancelRequestResponse**](BaseResponseOfPagedResultOfOrderCancelRequestResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdercancelrequestsIdGet**
> BaseResponseOfOrderCancelRequestResponse apiOrdercancelrequestsIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderCancelRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdercancelrequestsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderCancelRequestsApi->apiOrdercancelrequestsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfOrderCancelRequestResponse**](BaseResponseOfOrderCancelRequestResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdercancelrequestsIdProcessPost**
> BaseResponseOfstring apiOrdercancelrequestsIdProcessPost(id, processCancelRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderCancelRequestsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ProcessCancelRequest processCancelRequest = ; // ProcessCancelRequest | 

try {
    final response = api.apiOrdercancelrequestsIdProcessPost(id, processCancelRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderCancelRequestsApi->apiOrdercancelrequestsIdProcessPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **processCancelRequest** | [**ProcessCancelRequest**](ProcessCancelRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdercancelrequestsMyRequestsGet**
> BaseResponseOfPagedResultOfOrderCancelRequestResponse apiOrdercancelrequestsMyRequestsGet(status, isRefundRequired, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrderCancelRequestsApi();
final CancelRequestStatus status = ; // CancelRequestStatus | 
final bool isRefundRequired = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiOrdercancelrequestsMyRequestsGet(status, isRefundRequired, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderCancelRequestsApi->apiOrdercancelrequestsMyRequestsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**CancelRequestStatus**](.md)|  | [optional] 
 **isRefundRequired** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfOrderCancelRequestResponse**](BaseResponseOfPagedResultOfOrderCancelRequestResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

