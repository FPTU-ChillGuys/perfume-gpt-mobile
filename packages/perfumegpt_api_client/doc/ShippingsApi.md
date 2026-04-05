# perfumegpt_api_client.api.ShippingsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiShippingsMeGet**](ShippingsApi.md#apishippingsmeget) | **GET** /api/shippings/me | 
[**apiShippingsMeSyncShippingStatusPost**](ShippingsApi.md#apishippingsmesyncshippingstatuspost) | **POST** /api/shippings/me/sync-shipping-status | 
[**apiShippingsOrderInfoUrlPost**](ShippingsApi.md#apishippingsorderinfourlpost) | **POST** /api/shippings/order-info-url | 
[**apiShippingsUserUserIdGet**](ShippingsApi.md#apishippingsuseruseridget) | **GET** /api/shippings/user/{userId} | 
[**apiShippingsUserUserIdSyncShippingStatusPost**](ShippingsApi.md#apishippingsuseruseridsyncshippingstatuspost) | **POST** /api/shippings/user/{userId}/sync-shipping-status | 


# **apiShippingsMeGet**
> BaseResponseOfPagedResultOfShippingInfoListItem apiShippingsMeGet(status, carrierName, shippingType, orderId, trackingNumber, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getShippingsApi();
final ShippingStatus status = ; // ShippingStatus | 
final CarrierName carrierName = ; // CarrierName | 
final ShippingType shippingType = ; // ShippingType | 
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String trackingNumber = trackingNumber_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiShippingsMeGet(status, carrierName, shippingType, orderId, trackingNumber, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ShippingsApi->apiShippingsMeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**ShippingStatus**](.md)|  | [optional] 
 **carrierName** | [**CarrierName**](.md)|  | [optional] 
 **shippingType** | [**ShippingType**](.md)|  | [optional] 
 **orderId** | **String**|  | [optional] 
 **trackingNumber** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfShippingInfoListItem**](BaseResponseOfPagedResultOfShippingInfoListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiShippingsMeSyncShippingStatusPost**
> BaseResponseOfstring apiShippingsMeSyncShippingStatusPost()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getShippingsApi();

try {
    final response = api.apiShippingsMeSyncShippingStatusPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ShippingsApi->apiShippingsMeSyncShippingStatusPost: $e\n');
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

# **apiShippingsOrderInfoUrlPost**
> BaseResponseOfstring apiShippingsOrderInfoUrlPost(getOrderInfoRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getShippingsApi();
final GetOrderInfoRequest getOrderInfoRequest = ; // GetOrderInfoRequest | 

try {
    final response = api.apiShippingsOrderInfoUrlPost(getOrderInfoRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ShippingsApi->apiShippingsOrderInfoUrlPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getOrderInfoRequest** | [**GetOrderInfoRequest**](GetOrderInfoRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiShippingsUserUserIdGet**
> BaseResponseOfPagedResultOfShippingInfoListItem apiShippingsUserUserIdGet(userId, status, carrierName, shippingType, orderId, trackingNumber, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getShippingsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ShippingStatus status = ; // ShippingStatus | 
final CarrierName carrierName = ; // CarrierName | 
final ShippingType shippingType = ; // ShippingType | 
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String trackingNumber = trackingNumber_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiShippingsUserUserIdGet(userId, status, carrierName, shippingType, orderId, trackingNumber, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ShippingsApi->apiShippingsUserUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **status** | [**ShippingStatus**](.md)|  | [optional] 
 **carrierName** | [**CarrierName**](.md)|  | [optional] 
 **shippingType** | [**ShippingType**](.md)|  | [optional] 
 **orderId** | **String**|  | [optional] 
 **trackingNumber** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfShippingInfoListItem**](BaseResponseOfPagedResultOfShippingInfoListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiShippingsUserUserIdSyncShippingStatusPost**
> BaseResponseOfstring apiShippingsUserUserIdSyncShippingStatusPost(userId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getShippingsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiShippingsUserUserIdSyncShippingStatusPost(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ShippingsApi->apiShippingsUserUserIdSyncShippingStatusPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

