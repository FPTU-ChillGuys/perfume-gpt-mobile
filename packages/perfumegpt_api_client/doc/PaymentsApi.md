# perfumegpt_api_client.api.PaymentsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPaymentsManagementTransactionsGet**](PaymentsApi.md#apipaymentsmanagementtransactionsget) | **GET** /api/payments/management-transactions | 
[**apiPaymentsMomoReturnGet**](PaymentsApi.md#apipaymentsmomoreturnget) | **GET** /api/payments/momo-return | 
[**apiPaymentsPaymentIdConfirmPut**](PaymentsApi.md#apipaymentspaymentidconfirmput) | **PUT** /api/payments/{paymentId}/confirm | 
[**apiPaymentsPaymentIdRetryPost**](PaymentsApi.md#apipaymentspaymentidretrypost) | **POST** /api/payments/{paymentId}/retry | 
[**apiPaymentsPayosCancelGet**](PaymentsApi.md#apipaymentspayoscancelget) | **GET** /api/payments/payos-cancel | 
[**apiPaymentsPayosReturnGet**](PaymentsApi.md#apipaymentspayosreturnget) | **GET** /api/payments/payos-return | 
[**apiPaymentsVnpayReturnGet**](PaymentsApi.md#apipaymentsvnpayreturnget) | **GET** /api/payments/vnpay-return | 


# **apiPaymentsManagementTransactionsGet**
> BaseResponseOfPaymentTransactionOverviewResponse apiPaymentsManagementTransactionsGet(fromDate, toDate, paymentMethod, transactionType, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final PaymentMethod paymentMethod = ; // PaymentMethod | 
final TransactionType transactionType = ; // TransactionType | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiPaymentsManagementTransactionsGet(fromDate, toDate, paymentMethod, transactionType, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsManagementTransactionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **paymentMethod** | [**PaymentMethod**](.md)|  | [optional] 
 **transactionType** | [**TransactionType**](.md)|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPaymentTransactionOverviewResponse**](BaseResponseOfPaymentTransactionOverviewResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentsMomoReturnGet**
> apiPaymentsMomoReturnGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();

try {
    api.apiPaymentsMomoReturnGet();
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsMomoReturnGet: $e\n');
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

# **apiPaymentsPayosCancelGet**
> apiPaymentsPayosCancelGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();

try {
    api.apiPaymentsPayosCancelGet();
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsPayosCancelGet: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentsPayosReturnGet**
> apiPaymentsPayosReturnGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getPaymentsApi();

try {
    api.apiPaymentsPayosReturnGet();
} on DioException catch (e) {
    print('Exception when calling PaymentsApi->apiPaymentsPayosReturnGet: $e\n');
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

