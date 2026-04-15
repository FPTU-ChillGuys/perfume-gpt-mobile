# perfumegpt_api_client.api.DictionaryApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dictionaryControllerCheckReady**](DictionaryApi.md#dictionarycontrollercheckready) | **GET** /api/v1/dictionary/ready | Check dictionary readiness
[**dictionaryControllerExtractEntities**](DictionaryApi.md#dictionarycontrollerextractentities) | **POST** /api/v1/dictionary/extract-entities | Extract raw entities
[**dictionaryControllerGetEntityTypes**](DictionaryApi.md#dictionarycontrollergetentitytypes) | **GET** /api/v1/dictionary/entity-types | List dictionary entity types
[**dictionaryControllerGetSnapshot**](DictionaryApi.md#dictionarycontrollergetsnapshot) | **GET** /api/v1/dictionary/snapshot | Get dictionary snapshot
[**dictionaryControllerParseText**](DictionaryApi.md#dictionarycontrollerparsetext) | **POST** /api/v1/dictionary/parse | Parse and normalize text
[**dictionaryControllerRebuildDictionary**](DictionaryApi.md#dictionarycontrollerrebuilddictionary) | **POST** /api/v1/dictionary/rebuild | Rebuild dictionary


# **dictionaryControllerCheckReady**
> Object dictionaryControllerCheckReady()

Check dictionary readiness

Returns whether the dictionary builder and winkNLP services are initialized.

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getDictionaryApi();

try {
    final response = api.dictionaryControllerCheckReady();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DictionaryApi->dictionaryControllerCheckReady: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dictionaryControllerExtractEntities**
> Object dictionaryControllerExtractEntities(body)

Extract raw entities

Extract custom entities using winkNLP without canonical normalization.

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getDictionaryApi();
final Object body = ; // Object | 

try {
    final response = api.dictionaryControllerExtractEntities(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DictionaryApi->dictionaryControllerExtractEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dictionaryControllerGetEntityTypes**
> Object dictionaryControllerGetEntityTypes()

List dictionary entity types

Return all entity types currently registered in the dictionary.

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getDictionaryApi();

try {
    final response = api.dictionaryControllerGetEntityTypes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DictionaryApi->dictionaryControllerGetEntityTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dictionaryControllerGetSnapshot**
> Object dictionaryControllerGetSnapshot()

Get dictionary snapshot

Return the current in-memory dictionary statistics and entity breakdown.

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getDictionaryApi();

try {
    final response = api.dictionaryControllerGetSnapshot();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DictionaryApi->dictionaryControllerGetSnapshot: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dictionaryControllerParseText**
> Object dictionaryControllerParseText(body)

Parse and normalize text

Extract raw entities with winkNLP and normalize them to canonical values.

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getDictionaryApi();
final Object body = ; // Object | 

try {
    final response = api.dictionaryControllerParseText(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DictionaryApi->dictionaryControllerParseText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dictionaryControllerRebuildDictionary**
> Object dictionaryControllerRebuildDictionary()

Rebuild dictionary

Force rebuild the dictionary from master data and reinitialize winkNLP.

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getDictionaryApi();

try {
    final response = api.dictionaryControllerRebuildDictionary();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DictionaryApi->dictionaryControllerRebuildDictionary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

