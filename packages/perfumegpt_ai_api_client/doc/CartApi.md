# perfumegpt_ai_api_client.api.CartApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCartClearDelete**](CartApi.md#apicartcleardelete) | **DELETE** /api/cart/clear | 
[**apiCartItemsGet**](CartApi.md#apicartitemsget) | **GET** /api/cart/items | 
[**apiCartItemsIdDelete**](CartApi.md#apicartitemsiddelete) | **DELETE** /api/cart/items/{id} | 
[**apiCartItemsIdPut**](CartApi.md#apicartitemsidput) | **PUT** /api/cart/items/{id} | 
[**apiCartItemsPost**](CartApi.md#apicartitemspost) | **POST** /api/cart/items | 
[**apiCartPosPreviewPost**](CartApi.md#apicartpospreviewpost) | **POST** /api/cart/pos-preview | 
[**apiCartTotalGet**](CartApi.md#apicarttotalget) | **GET** /api/cart/total | 


# **apiCartClearDelete**
> BaseResponseOfstring apiCartClearDelete(itemIds)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final List<String> itemIds = ; // List<String> | 

try {
    final response = api.apiCartClearDelete(itemIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartClearDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemIds** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartItemsGet**
> BaseResponseOfGetCartItemsResponse apiCartItemsGet(itemIds, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final List<String> itemIds = ; // List<String> | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiCartItemsGet(itemIds, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartItemsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemIds** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfGetCartItemsResponse**](BaseResponseOfGetCartItemsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartItemsIdDelete**
> BaseResponseOfstring apiCartItemsIdDelete(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCartItemsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartItemsIdDelete: $e\n');
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

# **apiCartItemsIdPut**
> BaseResponseOfstring apiCartItemsIdPut(id, updateCartItemRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCartItemRequest updateCartItemRequest = ; // UpdateCartItemRequest | 

try {
    final response = api.apiCartItemsIdPut(id, updateCartItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartItemsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCartItemRequest** | [**UpdateCartItemRequest**](UpdateCartItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartItemsPost**
> BaseResponseOfstring apiCartItemsPost(createCartItemRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final CreateCartItemRequest createCartItemRequest = ; // CreateCartItemRequest | 

try {
    final response = api.apiCartItemsPost(createCartItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartItemsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCartItemRequest** | [**CreateCartItemRequest**](CreateCartItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartPosPreviewPost**
> BaseResponseOfPreviewPosOrderResponse apiCartPosPreviewPost(previewPosOrderRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final PreviewPosOrderRequest previewPosOrderRequest = ; // PreviewPosOrderRequest | 

try {
    final response = api.apiCartPosPreviewPost(previewPosOrderRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartPosPreviewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **previewPosOrderRequest** | [**PreviewPosOrderRequest**](PreviewPosOrderRequest.md)|  | 

### Return type

[**BaseResponseOfPreviewPosOrderResponse**](BaseResponseOfPreviewPosOrderResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartTotalGet**
> BaseResponseOfGetCartTotalResponse apiCartTotalGet(voucherCode, itemIds, savedAddressId, recipientPeriodContactName, recipientPeriodContactPhoneNumber, recipientPeriodDistrictId, recipientPeriodDistrictName, recipientPeriodWardCode, recipientPeriodWardName, recipientPeriodProvinceId, recipientPeriodProvinceName, recipientPeriodFullAddress)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final String voucherCode = voucherCode_example; // String | 
final List<String> itemIds = ; // List<String> | 
final String savedAddressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String recipientPeriodContactName = recipientPeriodContactName_example; // String | 
final String recipientPeriodContactPhoneNumber = recipientPeriodContactPhoneNumber_example; // String | 
final int recipientPeriodDistrictId = 56; // int | 
final String recipientPeriodDistrictName = recipientPeriodDistrictName_example; // String | 
final String recipientPeriodWardCode = recipientPeriodWardCode_example; // String | 
final String recipientPeriodWardName = recipientPeriodWardName_example; // String | 
final int recipientPeriodProvinceId = 56; // int | 
final String recipientPeriodProvinceName = recipientPeriodProvinceName_example; // String | 
final String recipientPeriodFullAddress = recipientPeriodFullAddress_example; // String | 

try {
    final response = api.apiCartTotalGet(voucherCode, itemIds, savedAddressId, recipientPeriodContactName, recipientPeriodContactPhoneNumber, recipientPeriodDistrictId, recipientPeriodDistrictName, recipientPeriodWardCode, recipientPeriodWardName, recipientPeriodProvinceId, recipientPeriodProvinceName, recipientPeriodFullAddress);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartTotalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherCode** | **String**|  | [optional] 
 **itemIds** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **savedAddressId** | **String**|  | [optional] 
 **recipientPeriodContactName** | **String**|  | [optional] 
 **recipientPeriodContactPhoneNumber** | **String**|  | [optional] 
 **recipientPeriodDistrictId** | **int**|  | [optional] 
 **recipientPeriodDistrictName** | **String**|  | [optional] 
 **recipientPeriodWardCode** | **String**|  | [optional] 
 **recipientPeriodWardName** | **String**|  | [optional] 
 **recipientPeriodProvinceId** | **int**|  | [optional] 
 **recipientPeriodProvinceName** | **String**|  | [optional] 
 **recipientPeriodFullAddress** | **String**|  | [optional] 

### Return type

[**BaseResponseOfGetCartTotalResponse**](BaseResponseOfGetCartTotalResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

