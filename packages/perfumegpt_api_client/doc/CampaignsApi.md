# perfumegpt_api_client.api.CampaignsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCampaignsCampaignIdDelete**](CampaignsApi.md#apicampaignscampaigniddelete) | **DELETE** /api/campaigns/{campaignId} | 
[**apiCampaignsCampaignIdGet**](CampaignsApi.md#apicampaignscampaignidget) | **GET** /api/campaigns/{campaignId} | 
[**apiCampaignsCampaignIdItemsGet**](CampaignsApi.md#apicampaignscampaigniditemsget) | **GET** /api/campaigns/{campaignId}/items | 
[**apiCampaignsCampaignIdItemsItemIdGet**](CampaignsApi.md#apicampaignscampaigniditemsitemidget) | **GET** /api/campaigns/{campaignId}/items/{itemId} | 
[**apiCampaignsCampaignIdPut**](CampaignsApi.md#apicampaignscampaignidput) | **PUT** /api/campaigns/{campaignId} | 
[**apiCampaignsCampaignIdStatusPut**](CampaignsApi.md#apicampaignscampaignidstatusput) | **PUT** /api/campaigns/{campaignId}/status | 
[**apiCampaignsGet**](CampaignsApi.md#apicampaignsget) | **GET** /api/campaigns | 
[**apiCampaignsHomeGet**](CampaignsApi.md#apicampaignshomeget) | **GET** /api/campaigns/home | 
[**apiCampaignsIdItemsItemIdDelete**](CampaignsApi.md#apicampaignsiditemsitemiddelete) | **DELETE** /api/campaigns/{id}/items/{itemId} | 
[**apiCampaignsIdItemsItemIdPut**](CampaignsApi.md#apicampaignsiditemsitemidput) | **PUT** /api/campaigns/{id}/items/{itemId} | 
[**apiCampaignsIdItemsPost**](CampaignsApi.md#apicampaignsiditemspost) | **POST** /api/campaigns/{id}/items | 
[**apiCampaignsIdVouchersGet**](CampaignsApi.md#apicampaignsidvouchersget) | **GET** /api/campaigns/{id}/vouchers | 
[**apiCampaignsIdVouchersPost**](CampaignsApi.md#apicampaignsidvoucherspost) | **POST** /api/campaigns/{id}/vouchers | 
[**apiCampaignsIdVouchersVoucherIdDelete**](CampaignsApi.md#apicampaignsidvouchersvoucheriddelete) | **DELETE** /api/campaigns/{id}/vouchers/{voucherId} | 
[**apiCampaignsIdVouchersVoucherIdGet**](CampaignsApi.md#apicampaignsidvouchersvoucheridget) | **GET** /api/campaigns/{id}/vouchers/{voucherId} | 
[**apiCampaignsIdVouchersVoucherIdPut**](CampaignsApi.md#apicampaignsidvouchersvoucheridput) | **PUT** /api/campaigns/{id}/vouchers/{voucherId} | 
[**apiCampaignsLookupActiveGet**](CampaignsApi.md#apicampaignslookupactiveget) | **GET** /api/campaigns/lookup/active | 
[**apiCampaignsPost**](CampaignsApi.md#apicampaignspost) | **POST** /api/campaigns | 


# **apiCampaignsCampaignIdDelete**
> BaseResponseOfstring apiCampaignsCampaignIdDelete(campaignId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsCampaignIdDelete(campaignId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsCampaignIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsCampaignIdGet**
> BaseResponseOfCampaignResponse apiCampaignsCampaignIdGet(campaignId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsCampaignIdGet(campaignId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsCampaignIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 

### Return type

[**BaseResponseOfCampaignResponse**](BaseResponseOfCampaignResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsCampaignIdItemsGet**
> BaseResponseOfListOfCampaignPromotionItemResponse apiCampaignsCampaignIdItemsGet(campaignId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsCampaignIdItemsGet(campaignId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsCampaignIdItemsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 

### Return type

[**BaseResponseOfListOfCampaignPromotionItemResponse**](BaseResponseOfListOfCampaignPromotionItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsCampaignIdItemsItemIdGet**
> BaseResponseOfCampaignPromotionItemResponse apiCampaignsCampaignIdItemsItemIdGet(campaignId, itemId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String itemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsCampaignIdItemsItemIdGet(campaignId, itemId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsCampaignIdItemsItemIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **itemId** | **String**|  | 

### Return type

[**BaseResponseOfCampaignPromotionItemResponse**](BaseResponseOfCampaignPromotionItemResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsCampaignIdPut**
> BaseResponseOfstring apiCampaignsCampaignIdPut(campaignId, updateCampaignRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCampaignRequest updateCampaignRequest = ; // UpdateCampaignRequest | 

try {
    final response = api.apiCampaignsCampaignIdPut(campaignId, updateCampaignRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsCampaignIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **updateCampaignRequest** | [**UpdateCampaignRequest**](UpdateCampaignRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsCampaignIdStatusPut**
> BaseResponseOfstring apiCampaignsCampaignIdStatusPut(campaignId, updateCampaignStatusRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String campaignId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCampaignStatusRequest updateCampaignStatusRequest = ; // UpdateCampaignStatusRequest | 

try {
    final response = api.apiCampaignsCampaignIdStatusPut(campaignId, updateCampaignStatusRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsCampaignIdStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String**|  | 
 **updateCampaignStatusRequest** | [**UpdateCampaignStatusRequest**](UpdateCampaignStatusRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsGet**
> BaseResponseOfPagedResultOfCampaignResponse apiCampaignsGet(searchTerm, status, type, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String searchTerm = searchTerm_example; // String | 
final CampaignStatus status = ; // CampaignStatus | 
final CampaignType type = ; // CampaignType | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiCampaignsGet(searchTerm, status, type, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | **String**|  | [optional] 
 **status** | [**CampaignStatus**](.md)|  | [optional] 
 **type** | [**CampaignType**](.md)|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfCampaignResponse**](BaseResponseOfPagedResultOfCampaignResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsHomeGet**
> BaseResponseOfListOfCampaignResponse apiCampaignsHomeGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();

try {
    final response = api.apiCampaignsHomeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsHomeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfCampaignResponse**](BaseResponseOfListOfCampaignResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdItemsItemIdDelete**
> BaseResponseOfstring apiCampaignsIdItemsItemIdDelete(id, itemId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String itemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsIdItemsItemIdDelete(id, itemId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdItemsItemIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **itemId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdItemsItemIdPut**
> BaseResponseOfstring apiCampaignsIdItemsItemIdPut(id, itemId, updateCampaignPromotionItemRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String itemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCampaignPromotionItemRequest updateCampaignPromotionItemRequest = ; // UpdateCampaignPromotionItemRequest | 

try {
    final response = api.apiCampaignsIdItemsItemIdPut(id, itemId, updateCampaignPromotionItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdItemsItemIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **itemId** | **String**|  | 
 **updateCampaignPromotionItemRequest** | [**UpdateCampaignPromotionItemRequest**](UpdateCampaignPromotionItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdItemsPost**
> BaseResponseOfstring apiCampaignsIdItemsPost(id, createCampaignPromotionItemRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CreateCampaignPromotionItemRequest createCampaignPromotionItemRequest = ; // CreateCampaignPromotionItemRequest | 

try {
    final response = api.apiCampaignsIdItemsPost(id, createCampaignPromotionItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdItemsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createCampaignPromotionItemRequest** | [**CreateCampaignPromotionItemRequest**](CreateCampaignPromotionItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdVouchersGet**
> BaseResponseOfListOfVoucherResponse apiCampaignsIdVouchersGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsIdVouchersGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdVouchersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfListOfVoucherResponse**](BaseResponseOfListOfVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdVouchersPost**
> BaseResponseOfstring apiCampaignsIdVouchersPost(id, createCampaignVoucherRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CreateCampaignVoucherRequest createCampaignVoucherRequest = ; // CreateCampaignVoucherRequest | 

try {
    final response = api.apiCampaignsIdVouchersPost(id, createCampaignVoucherRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdVouchersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createCampaignVoucherRequest** | [**CreateCampaignVoucherRequest**](CreateCampaignVoucherRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdVouchersVoucherIdDelete**
> BaseResponseOfstring apiCampaignsIdVouchersVoucherIdDelete(id, voucherId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String voucherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsIdVouchersVoucherIdDelete(id, voucherId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdVouchersVoucherIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **voucherId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdVouchersVoucherIdGet**
> BaseResponseOfVoucherResponse apiCampaignsIdVouchersVoucherIdGet(id, voucherId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String voucherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCampaignsIdVouchersVoucherIdGet(id, voucherId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdVouchersVoucherIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **voucherId** | **String**|  | 

### Return type

[**BaseResponseOfVoucherResponse**](BaseResponseOfVoucherResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsIdVouchersVoucherIdPut**
> BaseResponseOfstring apiCampaignsIdVouchersVoucherIdPut(id, voucherId, updateCampaignVoucherRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String voucherId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCampaignVoucherRequest updateCampaignVoucherRequest = ; // UpdateCampaignVoucherRequest | 

try {
    final response = api.apiCampaignsIdVouchersVoucherIdPut(id, voucherId, updateCampaignVoucherRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsIdVouchersVoucherIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **voucherId** | **String**|  | 
 **updateCampaignVoucherRequest** | [**UpdateCampaignVoucherRequest**](UpdateCampaignVoucherRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsLookupActiveGet**
> BaseResponseOfListOfCampaignLookupItem apiCampaignsLookupActiveGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();

try {
    final response = api.apiCampaignsLookupActiveGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsLookupActiveGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfCampaignLookupItem**](BaseResponseOfListOfCampaignLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCampaignsPost**
> BaseResponseOfstring apiCampaignsPost(createCampaignRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCampaignsApi();
final CreateCampaignRequest createCampaignRequest = ; // CreateCampaignRequest | 

try {
    final response = api.apiCampaignsPost(createCampaignRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CampaignsApi->apiCampaignsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCampaignRequest** | [**CreateCampaignRequest**](CreateCampaignRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

