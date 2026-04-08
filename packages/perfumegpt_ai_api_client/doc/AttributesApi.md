# perfumegpt_ai_api_client.api.AttributesApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAttributesAttributeIdDelete**](AttributesApi.md#apiattributesattributeiddelete) | **DELETE** /api/attributes/{attributeId} | 
[**apiAttributesAttributeIdPut**](AttributesApi.md#apiattributesattributeidput) | **PUT** /api/attributes/{attributeId} | 
[**apiAttributesAttributeIdValuesLookupGet**](AttributesApi.md#apiattributesattributeidvalueslookupget) | **GET** /api/attributes/{attributeId}/values/lookup | 
[**apiAttributesAttributeIdValuesPost**](AttributesApi.md#apiattributesattributeidvaluespost) | **POST** /api/attributes/{attributeId}/values | 
[**apiAttributesLookupGet**](AttributesApi.md#apiattributeslookupget) | **GET** /api/attributes/lookup | 
[**apiAttributesPost**](AttributesApi.md#apiattributespost) | **POST** /api/attributes | 
[**apiAttributesValuesValueIdDelete**](AttributesApi.md#apiattributesvaluesvalueiddelete) | **DELETE** /api/attributes/values/{valueId} | 
[**apiAttributesValuesValueIdPut**](AttributesApi.md#apiattributesvaluesvalueidput) | **PUT** /api/attributes/values/{valueId} | 


# **apiAttributesAttributeIdDelete**
> BaseResponseOfstring apiAttributesAttributeIdDelete(attributeId)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
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

# **apiAttributesAttributeIdValuesLookupGet**
> BaseResponseOfListOfAttributeValueLookupItem apiAttributesAttributeIdValuesLookupGet(attributeId)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
final int attributeId = 56; // int | 

try {
    final response = api.apiAttributesAttributeIdValuesLookupGet(attributeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesAttributeIdValuesLookupGet: $e\n');
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

# **apiAttributesAttributeIdValuesPost**
> BaseResponseOfstring apiAttributesAttributeIdValuesPost(attributeId, createAttributeValueRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
final int attributeId = 56; // int | 
final CreateAttributeValueRequest createAttributeValueRequest = ; // CreateAttributeValueRequest | 

try {
    final response = api.apiAttributesAttributeIdValuesPost(attributeId, createAttributeValueRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AttributesApi->apiAttributesAttributeIdValuesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **int**|  | 
 **createAttributeValueRequest** | [**CreateAttributeValueRequest**](CreateAttributeValueRequest.md)|  | 

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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
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

# **apiAttributesValuesValueIdDelete**
> BaseResponseOfstring apiAttributesValuesValueIdDelete(valueId)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
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
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAttributesApi();
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

