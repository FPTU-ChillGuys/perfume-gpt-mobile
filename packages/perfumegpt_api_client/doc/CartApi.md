# perfumegpt_api_client.api.CartApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCartClearDelete**](CartApi.md#apicartcleardelete) | **DELETE** /api/cart/clear | 
[**apiCartItemsGet**](CartApi.md#apicartitemsget) | **GET** /api/cart/items | 
[**apiCartTotalGet**](CartApi.md#apicarttotalget) | **GET** /api/cart/total | 


# **apiCartClearDelete**
> BaseResponseOfstring apiCartClearDelete()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCartApi();

try {
    final response = api.apiCartClearDelete();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartClearDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartItemsGet**
> BaseResponseOfGetCartItemsResponse apiCartItemsGet(itemIds)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCartApi();
final List<String> itemIds = ; // List<String> | 

try {
    final response = api.apiCartItemsGet(itemIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartApi->apiCartItemsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemIds** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**BaseResponseOfGetCartItemsResponse**](BaseResponseOfGetCartItemsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartTotalGet**
> BaseResponseOfGetCartTotalResponse apiCartTotalGet(voucherCode, itemIds, savedAddressId, recipientPeriodFullName, recipientPeriodPhone, recipientPeriodDistrictId, recipientPeriodDistrictName, recipientPeriodWardCode, recipientPeriodWardName, recipientPeriodProvinceId, recipientPeriodProvinceName, recipientPeriodFullAddress)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCartApi();
final String voucherCode = voucherCode_example; // String | 
final List<String> itemIds = ; // List<String> | 
final String savedAddressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String recipientPeriodFullName = recipientPeriodFullName_example; // String | 
final String recipientPeriodPhone = recipientPeriodPhone_example; // String | 
final int recipientPeriodDistrictId = 56; // int | 
final String recipientPeriodDistrictName = recipientPeriodDistrictName_example; // String | 
final String recipientPeriodWardCode = recipientPeriodWardCode_example; // String | 
final String recipientPeriodWardName = recipientPeriodWardName_example; // String | 
final int recipientPeriodProvinceId = 56; // int | 
final String recipientPeriodProvinceName = recipientPeriodProvinceName_example; // String | 
final String recipientPeriodFullAddress = recipientPeriodFullAddress_example; // String | 

try {
    final response = api.apiCartTotalGet(voucherCode, itemIds, savedAddressId, recipientPeriodFullName, recipientPeriodPhone, recipientPeriodDistrictId, recipientPeriodDistrictName, recipientPeriodWardCode, recipientPeriodWardName, recipientPeriodProvinceId, recipientPeriodProvinceName, recipientPeriodFullAddress);
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
 **recipientPeriodFullName** | **String**|  | [optional] 
 **recipientPeriodPhone** | **String**|  | [optional] 
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

