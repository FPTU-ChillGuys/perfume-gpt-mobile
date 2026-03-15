# perfumegpt_api_client.api.PaymentsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPaymentsChangeMethodPaymentIdPut**](PaymentsApi.md#apipaymentschangemethodpaymentidput) | **PUT** /api/payments/change-method/{paymentId} | 
[**apiPaymentsConfirmPaymentIdPut**](PaymentsApi.md#apipaymentsconfirmpaymentidput) | **PUT** /api/payments/confirm/{paymentId} | 
[**apiPaymentsRetryPaymentIdPost**](PaymentsApi.md#apipaymentsretrypaymentidpost) | **POST** /api/payments/retry/{paymentId} | 
[**apiPaymentsVnpayReturnGet**](PaymentsApi.md#apipaymentsvnpayreturnget) | **GET** /api/payments/vnpay-return | 


# **apiPaymentsChangeMethodPaymentIdPut**
> BaseResponseOfstring apiPaymentsChangeMethodPaymentIdPut(paymentId, paymentInformation)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final String paymentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final PaymentInformation paymentInformation = ; // PaymentInformation | 

try {
    final response = api.apiPaymentsChangeMethodPaymentIdPut(paymentId, paymentInformation);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsChangeMethodPaymentIdPut: $e\n');
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

# **apiPaymentsConfirmPaymentIdPut**
> BaseResponseOfboolean apiPaymentsConfirmPaymentIdPut(paymentId, isSuccess, failureReason)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final String paymentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final bool isSuccess = true; // bool | 
final String failureReason = failureReason_example; // String | 

try {
    final response = api.apiPaymentsConfirmPaymentIdPut(paymentId, isSuccess, failureReason);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsConfirmPaymentIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **String**|  | 
 **isSuccess** | **bool**|  | [optional] [default to true]
 **failureReason** | **String**|  | [optional] 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentsRetryPaymentIdPost**
> BaseResponseOfstring apiPaymentsRetryPaymentIdPost(paymentId, paymentInformation)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final String paymentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final PaymentInformation paymentInformation = ; // PaymentInformation | 

try {
    final response = api.apiPaymentsRetryPaymentIdPost(paymentId, paymentInformation);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsRetryPaymentIdPost: $e\n');
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

