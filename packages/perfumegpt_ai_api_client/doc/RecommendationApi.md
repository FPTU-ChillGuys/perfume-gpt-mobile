# perfumegpt_ai_api_client.api.RecommendationApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recommendationControllerGetRecommendationsV3Simple**](RecommendationApi.md#recommendationcontrollergetrecommendationsv3simple) | **GET** /recommendation/v3/simple | Recommend đơn giản và ổn định dựa trên Order và Best Sellers (không fallback mảng rỗng)
[**recommendationControllerSendDailyRecommendationManual**](RecommendationApi.md#recommendationcontrollersenddailyrecommendationmanual) | **POST** /recommendation/daily/send | Manual trigger gửi daily recommendation cho user active (sync)
[**recommendationControllerTestRecommendation**](RecommendationApi.md#recommendationcontrollertestrecommendation) | **POST** /recommendation/test-recommendation | Test sinh recommendation cho user và gửi email
[**recommendationControllerTestRepurchase**](RecommendationApi.md#recommendationcontrollertestrepurchase) | **POST** /recommendation/test-repurchase | Test sinh repurchase recommendation cho user và gửi email


# **recommendationControllerGetRecommendationsV3Simple**
> TrendControllerGetProductTrendJobResult200Response recommendationControllerGetRecommendationsV3Simple(userId, size)

Recommend đơn giản và ổn định dựa trên Order và Best Sellers (không fallback mảng rỗng)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getRecommendationApi();
final String userId = userId_example; // String | ID của user cần recommend
final num size = 8.14; // num | Số sản phẩm recommend (default: 10)

try {
    final response = api.recommendationControllerGetRecommendationsV3Simple(userId, size);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RecommendationApi->recommendationControllerGetRecommendationsV3Simple: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của user cần recommend | 
 **size** | **num**| Số sản phẩm recommend (default: 10) | [optional] 

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recommendationControllerSendDailyRecommendationManual**
> TrendControllerGetProductTrendJobResult200Response recommendationControllerSendDailyRecommendationManual()

Manual trigger gửi daily recommendation cho user active (sync)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getRecommendationApi();

try {
    final response = api.recommendationControllerSendDailyRecommendationManual();
    print(response);
} on DioException catch (e) {
    print('Exception when calling RecommendationApi->recommendationControllerSendDailyRecommendationManual: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recommendationControllerTestRecommendation**
> EmailControllerSendEmail200Response recommendationControllerTestRecommendation(userId)

Test sinh recommendation cho user và gửi email

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getRecommendationApi();
final String userId = userId_example; // String | ID của user để test recommendation

try {
    final response = api.recommendationControllerTestRecommendation(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RecommendationApi->recommendationControllerTestRecommendation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của user để test recommendation | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recommendationControllerTestRepurchase**
> EmailControllerSendEmail200Response recommendationControllerTestRepurchase(userId, orderId)

Test sinh repurchase recommendation cho user và gửi email

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getRecommendationApi();
final String userId = userId_example; // String | ID của user để test repurchase recommendation
final String orderId = orderId_example; // String | ID của đơn hàng để phân tích khuyến nghị

try {
    final response = api.recommendationControllerTestRepurchase(userId, orderId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RecommendationApi->recommendationControllerTestRepurchase: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của user để test repurchase recommendation | 
 **orderId** | **String**| ID của đơn hàng để phân tích khuyến nghị | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

