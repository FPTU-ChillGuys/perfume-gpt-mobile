# perfumegpt_api_client.api.VouchersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUserVouchersMeGet**](VouchersApi.md#apiuservouchersmeget) | **GET** /api/user-vouchers/me | 
[**apiVouchersApplicablePost**](VouchersApi.md#apivouchersapplicablepost) | **POST** /api/vouchers/applicable | 
[**apiVouchersGet**](VouchersApi.md#apivouchersget) | **GET** /api/vouchers | 
[**apiVouchersPost**](VouchersApi.md#apivoucherspost) | **POST** /api/vouchers | 
[**apiVouchersRedeemPost**](VouchersApi.md#apivouchersredeempost) | **POST** /api/vouchers/redeem | 
[**apiVouchersRedeemableGet**](VouchersApi.md#apivouchersredeemableget) | **GET** /api/vouchers/redeemable | 
[**apiVouchersVariantVariantIdApplicableGet**](VouchersApi.md#apivouchersvariantvariantidapplicableget) | **GET** /api/vouchers/variant/{variantId}/applicable | 
[**apiVouchersVoucherIdDelete**](VouchersApi.md#apivouchersvoucheriddelete) | **DELETE** /api/vouchers/{voucherId} | 
[**apiVouchersVoucherIdGet**](VouchersApi.md#apivouchersvoucheridget) | **GET** /api/vouchers/{voucherId} | 
[**apiVouchersVoucherIdPut**](VouchersApi.md#apivouchersvoucheridput) | **PUT** /api/vouchers/{voucherId} | 


# **apiUserVouchersMeGet**
> BaseResponseOfPagedResultOfUserVoucherResponse apiUserVouchersMeGet(status, isUsed, isExpired, code, discountType, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final UsageStatus status = ; // UsageStatus | 
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
    final response = api.apiUserVouchersMeGet(status, isUsed, isExpired, code, discountType, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiUserVouchersMeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**UsageStatus**](.md)|  | [optional] 
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

# **apiVouchersApplicablePost**
> BaseResponseOfListOfApplicableVoucherResponse apiVouchersApplicablePost(getApplicableVouchersRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final GetApplicableVouchersRequest getApplicableVouchersRequest = ; // GetApplicableVouchersRequest | 

try {
    final response = api.apiVouchersApplicablePost(getApplicableVouchersRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersApplicablePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getApplicableVouchersRequest** | [**GetApplicableVouchersRequest**](GetApplicableVouchersRequest.md)|  | 

### Return type

[**BaseResponseOfListOfApplicableVoucherResponse**](BaseResponseOfListOfApplicableVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
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

# **apiVouchersRedeemableGet**
> BaseResponseOfListOfRedeemableVoucherResponse apiVouchersRedeemableGet(pageNumber, pageSize, sortBy, sortOrder, isDescending)



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
    final response = api.apiVouchersRedeemableGet(pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersRedeemableGet: $e\n');
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

# **apiVouchersVariantVariantIdApplicableGet**
> BaseResponseOfListOfApplicableVoucherResponse apiVouchersVariantVariantIdApplicableGet(variantId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getVouchersApi();
final String variantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiVouchersVariantVariantIdApplicableGet(variantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VouchersApi->apiVouchersVariantVariantIdApplicableGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **String**|  | 

### Return type

[**BaseResponseOfListOfApplicableVoucherResponse**](BaseResponseOfListOfApplicableVoucherResponse.md)

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

