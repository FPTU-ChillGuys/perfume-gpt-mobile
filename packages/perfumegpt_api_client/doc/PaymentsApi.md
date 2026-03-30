# perfumegpt_api_client.api.PaymentsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPaymentsPaymentIdConfirmPut**](PaymentsApi.md#apipaymentspaymentidconfirmput) | **PUT** /api/payments/{paymentId}/confirm | 
[**apiPaymentsPaymentIdMethodPut**](PaymentsApi.md#apipaymentspaymentidmethodput) | **PUT** /api/payments/{paymentId}/method | 
[**apiPaymentsPaymentIdRetryPost**](PaymentsApi.md#apipaymentspaymentidretrypost) | **POST** /api/payments/{paymentId}/retry | 
[**apiPaymentsVnpayReturnGet**](PaymentsApi.md#apipaymentsvnpayreturnget) | **GET** /api/payments/vnpay-return | 


# **apiPaymentsPaymentIdConfirmPut**
> BaseResponseOfboolean apiPaymentsPaymentIdConfirmPut(paymentId, confirmPaymentRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final String paymentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ConfirmPaymentRequest confirmPaymentRequest = ; // ConfirmPaymentRequest | 

try {
    final response = api.apiPaymentsPaymentIdConfirmPut(paymentId, confirmPaymentRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsPaymentIdConfirmPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **String**|  | 
 **confirmPaymentRequest** | [**ConfirmPaymentRequest**](ConfirmPaymentRequest.md)|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentsPaymentIdMethodPut**
> BaseResponseOfstring apiPaymentsPaymentIdMethodPut(paymentId, paymentInformation)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final String paymentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final PaymentInformation paymentInformation = ; // PaymentInformation | 

try {
    final response = api.apiPaymentsPaymentIdMethodPut(paymentId, paymentInformation);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsPaymentIdMethodPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **String**|  | 
 **paymentInformation** | [**PaymentInformation**](PaymentInformation.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentsPaymentIdRetryPost**
> BaseResponseOfstring apiPaymentsPaymentIdRetryPost(paymentId, paymentInformation)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final String paymentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final PaymentInformation paymentInformation = ; // PaymentInformation | 

try {
    final response = api.apiPaymentsPaymentIdRetryPost(paymentId, paymentInformation);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsPaymentIdRetryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **String**|  | 
 **paymentInformation** | [**PaymentInformation**](PaymentInformation.md)|  | [optional] 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentsVnpayReturnGet**
> apiPaymentsVnpayReturnGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();

try {
    api.apiPaymentsVnpayReturnGet();
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsVnpayReturnGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

