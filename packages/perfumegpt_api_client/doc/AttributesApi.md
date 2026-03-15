# perfumegpt_api_client.api.AttributesApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAttributesAttributeIdDelete**](AttributesApi.md#apiattributesattributeiddelete) | **DELETE** /api/attributes/{attributeId} | 
[**apiAttributesAttributeIdPut**](AttributesApi.md#apiattributesattributeidput) | **PUT** /api/attributes/{attributeId} | 
[**apiAttributesLookupGet**](AttributesApi.md#apiattributeslookupget) | **GET** /api/attributes/lookup | 
[**apiAttributesPost**](AttributesApi.md#apiattributespost) | **POST** /api/attributes | 
[**apiAttributesValuesLookupAttributeIdGet**](AttributesApi.md#apiattributesvalueslookupattributeidget) | **GET** /api/attributes/values/lookup/{attributeId} | 
[**apiAttributesValuesPost**](AttributesApi.md#apiattributesvaluespost) | **POST** /api/attributes/values | 
[**apiAttributesValuesValueIdDelete**](AttributesApi.md#apiattributesvaluesvalueiddelete) | **DELETE** /api/attributes/values/{valueId} | 
[**apiAttributesValuesValueIdPut**](AttributesApi.md#apiattributesvaluesvalueidput) | **PUT** /api/attributes/values/{valueId} | 


# **apiAttributesAttributeIdDelete**
> BaseResponseOfstring apiAttributesAttributeIdDelete(attributeId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final int attributeId = 56; // int | 

try {
    final response = api.apiAttributesAttributeIdDelete(attributeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesAttributeIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **int**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesAttributeIdPut**
> BaseResponseOfstring apiAttributesAttributeIdPut(attributeId, updateAttributeRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final int attributeId = 56; // int | 
final UpdateAttributeRequest updateAttributeRequest = ; // UpdateAttributeRequest | 

try {
    final response = api.apiAttributesAttributeIdPut(attributeId, updateAttributeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesAttributeIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **int**|  | 
 **updateAttributeRequest** | [**UpdateAttributeRequest**](UpdateAttributeRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesLookupGet**
> BaseResponseOfListOfAttributeLookupItem apiAttributesLookupGet(isVariantLevel)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final bool isVariantLevel = true; // bool | 

try {
    final response = api.apiAttributesLookupGet(isVariantLevel);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesLookupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isVariantLevel** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfListOfAttributeLookupItem**](BaseResponseOfListOfAttributeLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesPost**
> BaseResponseOfstring apiAttributesPost(createAttributeRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final CreateAttributeRequest createAttributeRequest = ; // CreateAttributeRequest | 

try {
    final response = api.apiAttributesPost(createAttributeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAttributeRequest** | [**CreateAttributeRequest**](CreateAttributeRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesValuesLookupAttributeIdGet**
> BaseResponseOfListOfAttributeValueLookupItem apiAttributesValuesLookupAttributeIdGet(attributeId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final int attributeId = 56; // int | 

try {
    final response = api.apiAttributesValuesLookupAttributeIdGet(attributeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesValuesLookupAttributeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **int**|  | 

### Return type

[**BaseResponseOfListOfAttributeValueLookupItem**](BaseResponseOfListOfAttributeValueLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesValuesPost**
> BaseResponseOfstring apiAttributesValuesPost(createAttributeValueRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final CreateAttributeValueRequest createAttributeValueRequest = ; // CreateAttributeValueRequest | 

try {
    final response = api.apiAttributesValuesPost(createAttributeValueRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesValuesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAttributeValueRequest** | [**CreateAttributeValueRequest**](CreateAttributeValueRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesValuesValueIdDelete**
> BaseResponseOfstring apiAttributesValuesValueIdDelete(valueId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final int valueId = 56; // int | 

try {
    final response = api.apiAttributesValuesValueIdDelete(valueId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesValuesValueIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **valueId** | **int**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAttributesValuesValueIdPut**
> BaseResponseOfstring apiAttributesValuesValueIdPut(valueId, updateAttributeValueRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAttributesApi();
final int valueId = 56; // int | 
final UpdateAttributeValueRequest updateAttributeValueRequest = ; // UpdateAttributeValueRequest | 

try {
    final response = api.apiAttributesValuesValueIdPut(valueId, updateAttributeValueRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesValuesValueIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **valueId** | **int**|  | 
 **updateAttributeValueRequest** | [**UpdateAttributeValueRequest**](UpdateAttributeValueRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

