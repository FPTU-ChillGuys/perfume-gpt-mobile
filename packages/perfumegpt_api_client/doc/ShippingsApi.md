# perfumegpt_api_client.api.ShippingsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiShippingsCalculateFeePost**](ShippingsApi.md#apishippingscalculatefeepost) | **POST** /api/shippings/calculate-fee | 


# **apiShippingsCalculateFeePost**
> BaseResponseOfCalculateFeeResponse apiShippingsCalculateFeePost(calculateFeeRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getShippingsApi();
final CalculateFeeRequest calculateFeeRequest = ; // CalculateFeeRequest | 

try {
    final response = api.apiShippingsCalculateFeePost(calculateFeeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ShippingsApi->apiShippingsCalculateFeePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculateFeeRequest** | [**CalculateFeeRequest**](CalculateFeeRequest.md)|  | 

### Return type

[**BaseResponseOfCalculateFeeResponse**](BaseResponseOfCalculateFeeResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

