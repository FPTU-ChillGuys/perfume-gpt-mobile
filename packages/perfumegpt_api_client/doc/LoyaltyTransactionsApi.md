# perfumegpt_api_client.api.LoyaltyTransactionsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiLoyaltytransactionsGet**](LoyaltyTransactionsApi.md#apiloyaltytransactionsget) | **GET** /api/loyaltytransactions | 
[**apiLoyaltytransactionsMeHistoryGet**](LoyaltyTransactionsApi.md#apiloyaltytransactionsmehistoryget) | **GET** /api/loyaltytransactions/me/history | 
[**apiLoyaltytransactionsMeTotalGet**](LoyaltyTransactionsApi.md#apiloyaltytransactionsmetotalget) | **GET** /api/loyaltytransactions/me/total | 
[**apiLoyaltytransactionsUserIdManualChangePost**](LoyaltyTransactionsApi.md#apiloyaltytransactionsuseridmanualchangepost) | **POST** /api/loyaltytransactions/{userId}/manual-change | 


# **apiLoyaltytransactionsGet**
> BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse apiLoyaltytransactionsGet(userId, transactionType, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyTransactionsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final LoyaltyTransactionType transactionType = ; // LoyaltyTransactionType | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiLoyaltytransactionsGet(userId, transactionType, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyTransactionsApi->apiLoyaltytransactionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **transactionType** | [**LoyaltyTransactionType**](.md)|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse**](BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLoyaltytransactionsMeHistoryGet**
> BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse apiLoyaltytransactionsMeHistoryGet(transactionType, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyTransactionsApi();
final LoyaltyTransactionType transactionType = ; // LoyaltyTransactionType | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiLoyaltytransactionsMeHistoryGet(transactionType, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyTransactionsApi->apiLoyaltytransactionsMeHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionType** | [**LoyaltyTransactionType**](.md)|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse**](BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLoyaltytransactionsMeTotalGet**
> BaseResponseOfLoyaltyTransactionTotalsResponse apiLoyaltytransactionsMeTotalGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyTransactionsApi();

try {
    final response = api.apiLoyaltytransactionsMeTotalGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyTransactionsApi->apiLoyaltytransactionsMeTotalGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfLoyaltyTransactionTotalsResponse**](BaseResponseOfLoyaltyTransactionTotalsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLoyaltytransactionsUserIdManualChangePost**
> BaseResponseOfstring apiLoyaltytransactionsUserIdManualChangePost(userId, manualChangeRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyTransactionsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ManualChangeRequest manualChangeRequest = ; // ManualChangeRequest | 

try {
    final response = api.apiLoyaltytransactionsUserIdManualChangePost(userId, manualChangeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyTransactionsApi->apiLoyaltytransactionsUserIdManualChangePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **manualChangeRequest** | [**ManualChangeRequest**](ManualChangeRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

