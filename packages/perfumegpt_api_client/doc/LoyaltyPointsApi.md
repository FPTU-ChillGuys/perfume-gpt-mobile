# perfumegpt_api_client.api.LoyaltyPointsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiLoyaltypointsMeGet**](LoyaltyPointsApi.md#apiloyaltypointsmeget) | **GET** /api/loyaltypoints/me | 
[**apiLoyaltypointsUserIdPlusPost**](LoyaltyPointsApi.md#apiloyaltypointsuseridpluspost) | **POST** /api/loyaltypoints/{userId}/plus | 
[**apiLoyaltypointsUserIdPost**](LoyaltyPointsApi.md#apiloyaltypointsuseridpost) | **POST** /api/loyaltypoints/{userId} | 
[**apiLoyaltypointsUserIdRedeemPost**](LoyaltyPointsApi.md#apiloyaltypointsuseridredeempost) | **POST** /api/loyaltypoints/{userId}/redeem | 


# **apiLoyaltypointsMeGet**
> BaseResponseOfLoyaltyPointResponse apiLoyaltypointsMeGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyPointsApi();

try {
    final response = api.apiLoyaltypointsMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyPointsApi->apiLoyaltypointsMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfLoyaltyPointResponse**](BaseResponseOfLoyaltyPointResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLoyaltypointsUserIdPlusPost**
> BaseResponseOfboolean apiLoyaltypointsUserIdPlusPost(userId, pointsRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyPointsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final PointsRequest pointsRequest = ; // PointsRequest | 

try {
    final response = api.apiLoyaltypointsUserIdPlusPost(userId, pointsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyPointsApi->apiLoyaltypointsUserIdPlusPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **pointsRequest** | [**PointsRequest**](PointsRequest.md)|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLoyaltypointsUserIdPost**
> BaseResponseOfboolean apiLoyaltypointsUserIdPost(userId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyPointsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiLoyaltypointsUserIdPost(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyPointsApi->apiLoyaltypointsUserIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLoyaltypointsUserIdRedeemPost**
> BaseResponseOfboolean apiLoyaltypointsUserIdRedeemPost(userId, pointsRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getLoyaltyPointsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final PointsRequest pointsRequest = ; // PointsRequest | 

try {
    final response = api.apiLoyaltypointsUserIdRedeemPost(userId, pointsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoyaltyPointsApi->apiLoyaltypointsUserIdRedeemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **pointsRequest** | [**PointsRequest**](PointsRequest.md)|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

