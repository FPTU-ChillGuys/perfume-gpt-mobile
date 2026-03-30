# perfumegpt_api_client.api.VouchersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiVouchersAvailableGet**](VouchersApi.md#apivouchersavailableget) | **GET** /api/vouchers/available | 
[**apiVouchersGet**](VouchersApi.md#apivouchersget) | **GET** /api/vouchers | 
[**apiVouchersMeGet**](VouchersApi.md#apivouchersmeget) | **GET** /api/vouchers/me | 
[**apiVouchersPost**](VouchersApi.md#apivoucherspost) | **POST** /api/vouchers | 
[**apiVouchersRedeemPost**](VouchersApi.md#apivouchersredeempost) | **POST** /api/vouchers/redeem | 
[**apiVouchersRedeemableListGet**](VouchersApi.md#apivouchersredeemablelistget) | **GET** /api/vouchers/redeemable-list | 
[**apiVouchersVoucherIdDelete**](VouchersApi.md#apivouchersvoucheriddelete) | **DELETE** /api/vouchers/{voucherId} | 
[**apiVouchersVoucherIdGet**](VouchersApi.md#apivouchersvoucheridget) | **GET** /api/vouchers/{voucherId} | 
[**apiVouchersVoucherIdPut**](VouchersApi.md#apivouchersvoucheridput) | **PUT** /api/vouchers/{voucherId} | 


# **apiVouchersAvailableGet**
> BaseResponseOfPagedResultOfAvailableVoucherResponse apiVouchersAvailableGet(pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiVouchersAvailableGet(pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersAvailableGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfAvailableVoucherResponse**](BaseResponseOfPagedResultOfAvailableVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersGet**
> BaseResponseOfPagedResultOfVoucherResponse apiVouchersGet(isExpired, code, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final bool isExpired = true; // bool | 
final String code = code_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiVouchersGet(isExpired, code, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isExpired** | **bool**|  | [optional] 
 **code** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfVoucherResponse**](BaseResponseOfPagedResultOfVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersMeGet**
> BaseResponseOfPagedResultOfUserVoucherResponse apiVouchersMeGet(status, isUsed, isExpired, code, discountType, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final int status = 56; // int | 
final bool isUsed = true; // bool | 
final bool isExpired = true; // bool | 
final String code = code_example; // String | 
final DiscountType discountType = ; // DiscountType | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiVouchersMeGet(status, isUsed, isExpired, code, discountType, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersMeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **int**|  | [optional] 
 **isUsed** | **bool**|  | [optional] 
 **isExpired** | **bool**|  | [optional] 
 **code** | **String**|  | [optional] 
 **discountType** | [**DiscountType**](.md)|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfUserVoucherResponse**](BaseResponseOfPagedResultOfUserVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersPost**
> BaseResponseOfstring apiVouchersPost(createVoucherRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final CreateVoucherRequest createVoucherRequest = ; // CreateVoucherRequest | 

try {
    final response = api.apiVouchersPost(createVoucherRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createVoucherRequest** | [**CreateVoucherRequest**](CreateVoucherRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersRedeemPost**
> BaseResponseOfstring apiVouchersRedeemPost(redeemVoucherRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final RedeemVoucherRequest redeemVoucherRequest = ; // RedeemVoucherRequest | 

try {
    final response = api.apiVouchersRedeemPost(redeemVoucherRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersRedeemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redeemVoucherRequest** | [**RedeemVoucherRequest**](RedeemVoucherRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersRedeemableListGet**
> BaseResponseOfListOfRedeemableVoucherResponse apiVouchersRedeemableListGet(pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiVouchersRedeemableListGet(pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersRedeemableListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfListOfRedeemableVoucherResponse**](BaseResponseOfListOfRedeemableVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersVoucherIdDelete**
> BaseResponseOfstring apiVouchersVoucherIdDelete(voucherId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final String voucherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiVouchersVoucherIdDelete(voucherId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersVoucherIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersVoucherIdGet**
> BaseResponseOfVoucherResponse apiVouchersVoucherIdGet(voucherId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final String voucherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiVouchersVoucherIdGet(voucherId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersVoucherIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **String**|  | 

### Return type

[**BaseResponseOfVoucherResponse**](BaseResponseOfVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVouchersVoucherIdPut**
> BaseResponseOfstring apiVouchersVoucherIdPut(voucherId, updateVoucherRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final String voucherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateVoucherRequest updateVoucherRequest = ; // UpdateVoucherRequest | 

try {
    final response = api.apiVouchersVoucherIdPut(voucherId, updateVoucherRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersVoucherIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **String**|  | 
 **updateVoucherRequest** | [**UpdateVoucherRequest**](UpdateVoucherRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

