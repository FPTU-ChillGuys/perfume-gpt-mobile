# perfumegpt_ai_api_client.api.AddressApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAddressDefaultGet**](AddressApi.md#apiaddressdefaultget) | **GET** /api/address/default | 
[**apiAddressDistrictsGet**](AddressApi.md#apiaddressdistrictsget) | **GET** /api/address/districts | 
[**apiAddressGet**](AddressApi.md#apiaddressget) | **GET** /api/address | 
[**apiAddressIdDelete**](AddressApi.md#apiaddressiddelete) | **DELETE** /api/address/{id} | 
[**apiAddressIdGet**](AddressApi.md#apiaddressidget) | **GET** /api/address/{id} | 
[**apiAddressIdPut**](AddressApi.md#apiaddressidput) | **PUT** /api/address/{id} | 
[**apiAddressIdSetDefaultPut**](AddressApi.md#apiaddressidsetdefaultput) | **PUT** /api/address/{id}/set-default | 
[**apiAddressPost**](AddressApi.md#apiaddresspost) | **POST** /api/address | 
[**apiAddressProvincesGet**](AddressApi.md#apiaddressprovincesget) | **GET** /api/address/provinces | 
[**apiAddressStreetsGet**](AddressApi.md#apiaddressstreetsget) | **GET** /api/address/streets | 
[**apiAddressWardsGet**](AddressApi.md#apiaddresswardsget) | **GET** /api/address/wards | 


# **apiAddressDefaultGet**
> BaseResponseOfAddressResponse apiAddressDefaultGet()



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();

try {
    final response = api.apiAddressDefaultGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressDefaultGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfAddressResponse**](BaseResponseOfAddressResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressDistrictsGet**
> BaseResponseOfListOfDistrictResponse apiAddressDistrictsGet(provinceId)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final int provinceId = 56; // int | 

try {
    final response = api.apiAddressDistrictsGet(provinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressDistrictsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provinceId** | **int**|  | [optional] 

### Return type

[**BaseResponseOfListOfDistrictResponse**](BaseResponseOfListOfDistrictResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressGet**
> BaseResponseOfListOfAddressResponse apiAddressGet()



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();

try {
    final response = api.apiAddressGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfAddressResponse**](BaseResponseOfListOfAddressResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressIdDelete**
> BaseResponseOfstring apiAddressIdDelete(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiAddressIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressIdGet**
> BaseResponseOfAddressResponse apiAddressIdGet(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiAddressIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfAddressResponse**](BaseResponseOfAddressResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressIdPut**
> BaseResponseOfstring apiAddressIdPut(id, updateAddressRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateAddressRequest updateAddressRequest = ; // UpdateAddressRequest | 

try {
    final response = api.apiAddressIdPut(id, updateAddressRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateAddressRequest** | [**UpdateAddressRequest**](UpdateAddressRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressIdSetDefaultPut**
> BaseResponseOfstring apiAddressIdSetDefaultPut(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiAddressIdSetDefaultPut(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressIdSetDefaultPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressPost**
> BaseResponseOfstring apiAddressPost(createAddressRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final CreateAddressRequest createAddressRequest = ; // CreateAddressRequest | 

try {
    final response = api.apiAddressPost(createAddressRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAddressRequest** | [**CreateAddressRequest**](CreateAddressRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressProvincesGet**
> BaseResponseOfListOfProvinceResponse apiAddressProvincesGet()



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();

try {
    final response = api.apiAddressProvincesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressProvincesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfProvinceResponse**](BaseResponseOfListOfProvinceResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressStreetsGet**
> BaseResponseOfAddressLevel4Response apiAddressStreetsGet(province, district, wardStreet)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final String province = province_example; // String | 
final String district = district_example; // String | 
final String wardStreet = wardStreet_example; // String | 

try {
    final response = api.apiAddressStreetsGet(province, district, wardStreet);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressStreetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **province** | **String**|  | [optional] 
 **district** | **String**|  | [optional] 
 **wardStreet** | **String**|  | [optional] 

### Return type

[**BaseResponseOfAddressLevel4Response**](BaseResponseOfAddressLevel4Response.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAddressWardsGet**
> BaseResponseOfListOfWardResponse apiAddressWardsGet(districtId)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAddressApi();
final int districtId = 56; // int | 

try {
    final response = api.apiAddressWardsGet(districtId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AddressApi->apiAddressWardsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtId** | **int**|  | [optional] 

### Return type

[**BaseResponseOfListOfWardResponse**](BaseResponseOfListOfWardResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

