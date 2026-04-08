# perfumegpt_ai_api_client.api.ScentNotesApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiScentnotesGet**](ScentNotesApi.md#apiscentnotesget) | **GET** /api/scentnotes | 
[**apiScentnotesIdDelete**](ScentNotesApi.md#apiscentnotesiddelete) | **DELETE** /api/scentnotes/{id} | 
[**apiScentnotesIdGet**](ScentNotesApi.md#apiscentnotesidget) | **GET** /api/scentnotes/{id} | 
[**apiScentnotesIdPut**](ScentNotesApi.md#apiscentnotesidput) | **PUT** /api/scentnotes/{id} | 
[**apiScentnotesLookupGet**](ScentNotesApi.md#apiscentnoteslookupget) | **GET** /api/scentnotes/lookup | 
[**apiScentnotesPost**](ScentNotesApi.md#apiscentnotespost) | **POST** /api/scentnotes | 


# **apiScentnotesGet**
> BaseResponseOfListOfScentNoteResponse apiScentnotesGet()



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getScentNotesApi();

try {
    final response = api.apiScentnotesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ScentNotesApi->apiScentnotesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfScentNoteResponse**](BaseResponseOfListOfScentNoteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiScentnotesIdDelete**
> BaseResponseOfboolean apiScentnotesIdDelete(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getScentNotesApi();
final int id = 56; // int | 

try {
    final response = api.apiScentnotesIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ScentNotesApi->apiScentnotesIdDelete: $e\n');
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

# **apiScentnotesIdGet**
> BaseResponseOfScentNoteResponse apiScentnotesIdGet(id)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getScentNotesApi();
final int id = 56; // int | 

try {
    final response = api.apiScentnotesIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ScentNotesApi->apiScentnotesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BaseResponseOfScentNoteResponse**](BaseResponseOfScentNoteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiScentnotesIdPut**
> BaseResponseOfScentNoteResponse apiScentnotesIdPut(id, updateScentNoteRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getScentNotesApi();
final int id = 56; // int | 
final UpdateScentNoteRequest updateScentNoteRequest = ; // UpdateScentNoteRequest | 

try {
    final response = api.apiScentnotesIdPut(id, updateScentNoteRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ScentNotesApi->apiScentnotesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateScentNoteRequest** | [**UpdateScentNoteRequest**](UpdateScentNoteRequest.md)|  | 

### Return type

[**BaseResponseOfScentNoteResponse**](BaseResponseOfScentNoteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiScentnotesLookupGet**
> BaseResponseOfListOfScentNoteLookupResponse apiScentnotesLookupGet()



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getScentNotesApi();

try {
    final response = api.apiScentnotesLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ScentNotesApi->apiScentnotesLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfScentNoteLookupResponse**](BaseResponseOfListOfScentNoteLookupResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiScentnotesPost**
> BaseResponseOfScentNoteResponse apiScentnotesPost(createScentNoteRequest)



### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getScentNotesApi();
final CreateScentNoteRequest createScentNoteRequest = ; // CreateScentNoteRequest | 

try {
    final response = api.apiScentnotesPost(createScentNoteRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ScentNotesApi->apiScentnotesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createScentNoteRequest** | [**CreateScentNoteRequest**](CreateScentNoteRequest.md)|  | 

### Return type

[**BaseResponseOfScentNoteResponse**](BaseResponseOfScentNoteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

