# perfumegpt_api_client.api.LedgersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiLedgersCashFlowGet**](LedgersApi.md#apiledgerscashflowget) | **GET** /api/ledgers/cash-flow | 
[**apiLedgersInventoryGet**](LedgersApi.md#apiledgersinventoryget) | **GET** /api/ledgers/inventory | 


# **apiLedgersCashFlowGet**
> BaseResponseOfPagedResultOfCashFlowLedgerItemResponse apiLedgersCashFlowGet(fromDate, toDate, flowType, category, referenceId, referenceCode, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLedgersApi();
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final CashFlowType flowType = ; // CashFlowType | 
final CashFlowCategory category = ; // CashFlowCategory | 
final String referenceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String referenceCode = referenceCode_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiLedgersCashFlowGet(fromDate, toDate, flowType, category, referenceId, referenceCode, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LedgersApi->apiLedgersCashFlowGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **flowType** | [**CashFlowType**](.md)|  | [optional] 
 **category** | [**CashFlowCategory**](.md)|  | [optional] 
 **referenceId** | **String**|  | [optional] 
 **referenceCode** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfCashFlowLedgerItemResponse**](BaseResponseOfPagedResultOfCashFlowLedgerItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLedgersInventoryGet**
> BaseResponseOfPagedResultOfInventoryLedgerItemResponse apiLedgersInventoryGet(fromDate, toDate, variantId, batchId, type, referenceId, actorId, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLedgersApi();
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String batchId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final StockTransactionType type = ; // StockTransactionType | 
final String referenceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String actorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiLedgersInventoryGet(fromDate, toDate, variantId, batchId, type, referenceId, actorId, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LedgersApi->apiLedgersInventoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **variantId** | **String**|  | [optional] 
 **batchId** | **String**|  | [optional] 
 **type** | [**StockTransactionType**](.md)|  | [optional] 
 **referenceId** | **String**|  | [optional] 
 **actorId** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfInventoryLedgerItemResponse**](BaseResponseOfPagedResultOfInventoryLedgerItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

