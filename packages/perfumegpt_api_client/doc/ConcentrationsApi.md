# perfumegpt_api_client.api.ConcentrationsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiConcentrationsGet**](ConcentrationsApi.md#apiconcentrationsget) | **GET** /api/concentrations | 
[**apiConcentrationsIdDelete**](ConcentrationsApi.md#apiconcentrationsiddelete) | **DELETE** /api/concentrations/{id} | 
[**apiConcentrationsIdGet**](ConcentrationsApi.md#apiconcentrationsidget) | **GET** /api/concentrations/{id} | 
[**apiConcentrationsIdPut**](ConcentrationsApi.md#apiconcentrationsidput) | **PUT** /api/concentrations/{id} | 
[**apiConcentrationsLookupGet**](ConcentrationsApi.md#apiconcentrationslookupget) | **GET** /api/concentrations/lookup | 
[**apiConcentrationsPost**](ConcentrationsApi.md#apiconcentrationspost) | **POST** /api/concentrations | 


# **apiConcentrationsGet**
> BaseResponseOfListOfConcentrationResponse apiConcentrationsGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getConcentrationsApi();

try {
    final response = api.apiConcentrationsGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConcentrationsApi->apiConcentrationsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfConcentrationResponse**](BaseResponseOfListOfConcentrationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiConcentrationsIdDelete**
> BaseResponseOfboolean apiConcentrationsIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getConcentrationsApi();
final int id = 56; // int | 

try {
    final response = api.apiConcentrationsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConcentrationsApi->apiConcentrationsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiConcentrationsIdGet**
> BaseResponseOfConcentrationResponse apiConcentrationsIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getConcentrationsApi();
final int id = 56; // int | 

try {
    final response = api.apiConcentrationsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConcentrationsApi->apiConcentrationsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfConcentrationResponse**](BaseResponseOfConcentrationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiConcentrationsIdPut**
> BaseResponseOfConcentrationResponse apiConcentrationsIdPut(id, updateConcentrationRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getConcentrationsApi();
final int id = 56; // int | 
final UpdateConcentrationRequest updateConcentrationRequest = ; // UpdateConcentrationRequest | 

try {
    final response = api.apiConcentrationsIdPut(id, updateConcentrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConcentrationsApi->apiConcentrationsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateConcentrationRequest** | [**UpdateConcentrationRequest**](UpdateConcentrationRequest.md)|  | 

### Return type

[**BaseResponseOfConcentrationResponse**](BaseResponseOfConcentrationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiConcentrationsLookupGet**
> BaseResponseOfListOfConcentrationLookupDto apiConcentrationsLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getConcentrationsApi();

try {
    final response = api.apiConcentrationsLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConcentrationsApi->apiConcentrationsLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfConcentrationLookupDto**](BaseResponseOfListOfConcentrationLookupDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiConcentrationsPost**
> BaseResponseOfConcentrationResponse apiConcentrationsPost(createConcentrationRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getConcentrationsApi();
final CreateConcentrationRequest createConcentrationRequest = ; // CreateConcentrationRequest | 

try {
    final response = api.apiConcentrationsPost(createConcentrationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConcentrationsApi->apiConcentrationsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConcentrationRequest** | [**CreateConcentrationRequest**](CreateConcentrationRequest.md)|  | 

### Return type

[**BaseResponseOfConcentrationResponse**](BaseResponseOfConcentrationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

