# perfumegpt_api_client.api.OrdersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOrdersCheckoutInStorePost**](OrdersApi.md#apiorderscheckoutinstorepost) | **POST** /api/orders/checkout-in-store | 
[**apiOrdersCheckoutPost**](OrdersApi.md#apiorderscheckoutpost) | **POST** /api/orders/checkout | 
[**apiOrdersGet**](OrdersApi.md#apiordersget) | **GET** /api/orders | 
[**apiOrdersMyOrdersGet**](OrdersApi.md#apiordersmyordersget) | **GET** /api/orders/my-orders | 
[**apiOrdersMyOrdersOrderIdGet**](OrdersApi.md#apiordersmyordersorderidget) | **GET** /api/orders/my-orders/{orderId} | 
[**apiOrdersMyOrdersOrderIdInvoiceGet**](OrdersApi.md#apiordersmyordersorderidinvoiceget) | **GET** /api/orders/my-orders/{orderId}/invoice | 
[**apiOrdersOrderCodeCodeGet**](OrdersApi.md#apiordersordercodecodeget) | **GET** /api/orders/order-code/{code} | 
[**apiOrdersOrderIdCancelPost**](OrdersApi.md#apiordersorderidcancelpost) | **POST** /api/orders/{orderId}/cancel | 
[**apiOrdersOrderIdDeliverInStorePut**](OrdersApi.md#apiordersorderiddeliverinstoreput) | **PUT** /api/orders/{orderId}/deliver-in-store | 
[**apiOrdersOrderIdFulfillPost**](OrdersApi.md#apiordersorderidfulfillpost) | **POST** /api/orders/{orderId}/fulfill | 
[**apiOrdersOrderIdGet**](OrdersApi.md#apiordersorderidget) | **GET** /api/orders/{orderId} | 
[**apiOrdersOrderIdInvoiceGet**](OrdersApi.md#apiordersorderidinvoiceget) | **GET** /api/orders/{orderId}/invoice | 
[**apiOrdersOrderIdPicklistGet**](OrdersApi.md#apiordersorderidpicklistget) | **GET** /api/orders/{orderId}/picklist | 
[**apiOrdersOrderIdStaffCancelPost**](OrdersApi.md#apiordersorderidstaffcancelpost) | **POST** /api/orders/{orderId}/staff-cancel | 
[**apiOrdersOrderIdStaffPreparePut**](OrdersApi.md#apiordersorderidstaffprepareput) | **PUT** /api/orders/{orderId}/staff-prepare | 
[**apiOrdersOrderIdSwapDamagedPost**](OrdersApi.md#apiordersorderidswapdamagedpost) | **POST** /api/orders/{orderId}/swap-damaged | 


# **apiOrdersCheckoutInStorePost**
> BaseResponseOfCreatePaymentResponseDto apiOrdersCheckoutInStorePost(createInStoreOrderRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final CreateInStoreOrderRequest createInStoreOrderRequest = ; // CreateInStoreOrderRequest | 

try {
    final response = api.apiOrdersCheckoutInStorePost(createInStoreOrderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersCheckoutInStorePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInStoreOrderRequest** | [**CreateInStoreOrderRequest**](CreateInStoreOrderRequest.md)|  | 

### Return type

[**BaseResponseOfCreatePaymentResponseDto**](BaseResponseOfCreatePaymentResponseDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersCheckoutPost**
> BaseResponseOfCreatePaymentResponseDto apiOrdersCheckoutPost(createOrderRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final CreateOrderRequest createOrderRequest = ; // CreateOrderRequest | 

try {
    final response = api.apiOrdersCheckoutPost(createOrderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersCheckoutPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrderRequest** | [**CreateOrderRequest**](CreateOrderRequest.md)|  | 

### Return type

[**BaseResponseOfCreatePaymentResponseDto**](BaseResponseOfCreatePaymentResponseDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersGet**
> BaseResponseOfPagedResultOfOrderListItem apiOrdersGet(userId, orderCode, status, type, paymentStatus, fromDate, toDate, searchTerm, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String orderCode = orderCode_example; // String | 
final OrderStatus status = ; // OrderStatus | 
final OrderType type = ; // OrderType | 
final PaymentStatus paymentStatus = ; // PaymentStatus | 
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String searchTerm = searchTerm_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiOrdersGet(userId, orderCode, status, type, paymentStatus, fromDate, toDate, searchTerm, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **orderCode** | **String**|  | [optional] 
 **status** | [**OrderStatus**](.md)|  | [optional] 
 **type** | [**OrderType**](.md)|  | [optional] 
 **paymentStatus** | [**PaymentStatus**](.md)|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **searchTerm** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfOrderListItem**](BaseResponseOfPagedResultOfOrderListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersMyOrdersGet**
> BaseResponseOfPagedResultOfOrderListItem apiOrdersMyOrdersGet(userId, orderCode, status, type, paymentStatus, fromDate, toDate, searchTerm, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String orderCode = orderCode_example; // String | 
final OrderStatus status = ; // OrderStatus | 
final OrderType type = ; // OrderType | 
final PaymentStatus paymentStatus = ; // PaymentStatus | 
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String searchTerm = searchTerm_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiOrdersMyOrdersGet(userId, orderCode, status, type, paymentStatus, fromDate, toDate, searchTerm, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersMyOrdersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **orderCode** | **String**|  | [optional] 
 **status** | [**OrderStatus**](.md)|  | [optional] 
 **type** | [**OrderType**](.md)|  | [optional] 
 **paymentStatus** | [**PaymentStatus**](.md)|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **searchTerm** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfOrderListItem**](BaseResponseOfPagedResultOfOrderListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersMyOrdersOrderIdGet**
> BaseResponseOfUserOrderResponse apiOrdersMyOrdersOrderIdGet(orderId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdersMyOrdersOrderIdGet(orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersMyOrdersOrderIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**BaseResponseOfUserOrderResponse**](BaseResponseOfUserOrderResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersMyOrdersOrderIdInvoiceGet**
> BaseResponseOfReceiptResponse apiOrdersMyOrdersOrderIdInvoiceGet(orderId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdersMyOrdersOrderIdInvoiceGet(orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersMyOrdersOrderIdInvoiceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**BaseResponseOfReceiptResponse**](BaseResponseOfReceiptResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderCodeCodeGet**
> BaseResponseOfOrderResponse apiOrdersOrderCodeCodeGet(code)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String code = code_example; // String | 

try {
    final response = api.apiOrdersOrderCodeCodeGet(code);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderCodeCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 

### Return type

[**BaseResponseOfOrderResponse**](BaseResponseOfOrderResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdCancelPost**
> BaseResponseOfstring apiOrdersOrderIdCancelPost(orderId, userCancelOrderRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UserCancelOrderRequest userCancelOrderRequest = ; // UserCancelOrderRequest | 

try {
    final response = api.apiOrdersOrderIdCancelPost(orderId, userCancelOrderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdCancelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **userCancelOrderRequest** | [**UserCancelOrderRequest**](UserCancelOrderRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdDeliverInStorePut**
> BaseResponseOfstring apiOrdersOrderIdDeliverInStorePut(orderId, deliverInStoreRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final DeliverInStoreRequest deliverInStoreRequest = ; // DeliverInStoreRequest | 

try {
    final response = api.apiOrdersOrderIdDeliverInStorePut(orderId, deliverInStoreRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdDeliverInStorePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **deliverInStoreRequest** | [**DeliverInStoreRequest**](DeliverInStoreRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdFulfillPost**
> BaseResponseOfstring apiOrdersOrderIdFulfillPost(orderId, fulfillOrderRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final FulfillOrderRequest fulfillOrderRequest = ; // FulfillOrderRequest | 

try {
    final response = api.apiOrdersOrderIdFulfillPost(orderId, fulfillOrderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdFulfillPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **fulfillOrderRequest** | [**FulfillOrderRequest**](FulfillOrderRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdGet**
> BaseResponseOfOrderResponse apiOrdersOrderIdGet(orderId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdersOrderIdGet(orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**BaseResponseOfOrderResponse**](BaseResponseOfOrderResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdInvoiceGet**
> BaseResponseOfReceiptResponse apiOrdersOrderIdInvoiceGet(orderId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdersOrderIdInvoiceGet(orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdInvoiceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**BaseResponseOfReceiptResponse**](BaseResponseOfReceiptResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdPicklistGet**
> BaseResponseOfPickListResponse apiOrdersOrderIdPicklistGet(orderId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdersOrderIdPicklistGet(orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdPicklistGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**BaseResponseOfPickListResponse**](BaseResponseOfPickListResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdStaffCancelPost**
> BaseResponseOfstring apiOrdersOrderIdStaffCancelPost(orderId, staffCancelOrderRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final StaffCancelOrderRequest staffCancelOrderRequest = ; // StaffCancelOrderRequest | 

try {
    final response = api.apiOrdersOrderIdStaffCancelPost(orderId, staffCancelOrderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdStaffCancelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **staffCancelOrderRequest** | [**StaffCancelOrderRequest**](StaffCancelOrderRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdStaffPreparePut**
> BaseResponseOfPickListResponse apiOrdersOrderIdStaffPreparePut(orderId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiOrdersOrderIdStaffPreparePut(orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdStaffPreparePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**BaseResponseOfPickListResponse**](BaseResponseOfPickListResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersOrderIdSwapDamagedPost**
> BaseResponseOfSwapDamagedStockResponse apiOrdersOrderIdSwapDamagedPost(orderId, swapDamagedStockRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getOrdersApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final SwapDamagedStockRequest swapDamagedStockRequest = ; // SwapDamagedStockRequest | 

try {
    final response = api.apiOrdersOrderIdSwapDamagedPost(orderId, swapDamagedStockRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->apiOrdersOrderIdSwapDamagedPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 
 **swapDamagedStockRequest** | [**SwapDamagedStockRequest**](SwapDamagedStockRequest.md)|  | 

### Return type

[**BaseResponseOfSwapDamagedStockResponse**](BaseResponseOfSwapDamagedStockResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

