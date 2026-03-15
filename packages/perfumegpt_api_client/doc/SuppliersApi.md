# perfumegpt_api_client.api.SuppliersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSuppliersLookupGet**](SuppliersApi.md#apisupplierslookupget) | **GET** /api/suppliers/lookup | 


# **apiSuppliersLookupGet**
> BaseResponseOfListOfSupplierLookupItem apiSuppliersLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getSuppliersApi();

try {
    final response = api.apiSuppliersLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuppliersApi->apiSuppliersLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfSupplierLookupItem**](BaseResponseOfListOfSupplierLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

