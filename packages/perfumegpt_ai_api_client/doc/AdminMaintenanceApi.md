# perfumegpt_ai_api_client.api.AdminMaintenanceApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminMaintenanceControllerAddPhraseRule**](AdminMaintenanceApi.md#adminmaintenancecontrolleraddphraserule) | **POST** /admin/maintenance/parse/add-rule | Add a new phrase rule to active dictionary
[**adminMaintenanceControllerCheckReady**](AdminMaintenanceApi.md#adminmaintenancecontrollercheckready) | **GET** /admin/maintenance/ready | Check dictionary and NLP readiness
[**adminMaintenanceControllerDeleteEmbedding**](AdminMaintenanceApi.md#adminmaintenancecontrollerdeleteembedding) | **DELETE** /admin/maintenance/embeddings/{productId} | Delete embedding for a specific product
[**adminMaintenanceControllerExtractEntities**](AdminMaintenanceApi.md#adminmaintenancecontrollerextractentities) | **POST** /admin/maintenance/parse/extract-entities | Extract raw entities from text
[**adminMaintenanceControllerGetAllPhraseRules**](AdminMaintenanceApi.md#adminmaintenancecontrollergetallphraserules) | **GET** /admin/maintenance/parse/rules | Get all active phrase rules
[**adminMaintenanceControllerGetEmbeddingStats**](AdminMaintenanceApi.md#adminmaintenancecontrollergetembeddingstats) | **GET** /admin/maintenance/embeddings/stats | Get embedding statistics
[**adminMaintenanceControllerGetEntityTypes**](AdminMaintenanceApi.md#adminmaintenancecontrollergetentitytypes) | **GET** /admin/maintenance/entity-types | List all dictionary entity types
[**adminMaintenanceControllerGetParseRulesTemplate**](AdminMaintenanceApi.md#adminmaintenancecontrollergetparserulestemplate) | **GET** /admin/maintenance/parse/template | Get phrase rules template (seed JSON)
[**adminMaintenanceControllerGetSnapshot**](AdminMaintenanceApi.md#adminmaintenancecontrollergetsnapshot) | **GET** /admin/maintenance/snapshot | Get current dictionary snapshot
[**adminMaintenanceControllerParseText**](AdminMaintenanceApi.md#adminmaintenancecontrollerparsetext) | **POST** /admin/maintenance/parse/text | Parse and normalize text
[**adminMaintenanceControllerRebuildAll**](AdminMaintenanceApi.md#adminmaintenancecontrollerrebuildall) | **POST** /admin/maintenance/rebuild-all | Full rebuild: dictionary + embeddings + BM25
[**adminMaintenanceControllerRebuildDictionary**](AdminMaintenanceApi.md#adminmaintenancecontrollerrebuilddictionary) | **POST** /admin/maintenance/rebuild/dictionary | Rebuild dictionary only
[**adminMaintenanceControllerRebuildEmbeddings**](AdminMaintenanceApi.md#adminmaintenancecontrollerrebuildembeddings) | **POST** /admin/maintenance/rebuild/embeddings | Rebuild all embeddings
[**adminMaintenanceControllerRebuildProductEmbedding**](AdminMaintenanceApi.md#adminmaintenancecontrollerrebuildproductembedding) | **POST** /admin/maintenance/rebuild/embeddings/{productId} | Rebuild embedding for a specific product
[**adminMaintenanceControllerRefreshVocabBm25**](AdminMaintenanceApi.md#adminmaintenancecontrollerrefreshvocabbm25) | **POST** /admin/maintenance/vocab-bm25-refresh | Refresh vocab BM25 materialized view


# **adminMaintenanceControllerAddPhraseRule**
> adminMaintenanceControllerAddPhraseRule(addPhraseRuleRequest)

Add a new phrase rule to active dictionary

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();
final AddPhraseRuleRequest addPhraseRuleRequest = ; // AddPhraseRuleRequest | 

try {
    api.adminMaintenanceControllerAddPhraseRule(addPhraseRuleRequest);
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerAddPhraseRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addPhraseRuleRequest** | [**AddPhraseRuleRequest**](AddPhraseRuleRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerCheckReady**
> adminMaintenanceControllerCheckReady()

Check dictionary and NLP readiness

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerCheckReady();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerCheckReady: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerDeleteEmbedding**
> adminMaintenanceControllerDeleteEmbedding(productId)

Delete embedding for a specific product

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();
final String productId = productId_example; // String | 

try {
    api.adminMaintenanceControllerDeleteEmbedding(productId);
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerDeleteEmbedding: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerExtractEntities**
> adminMaintenanceControllerExtractEntities(body)

Extract raw entities from text

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();
final Object body = ; // Object | 

try {
    api.adminMaintenanceControllerExtractEntities(body);
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerExtractEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerGetAllPhraseRules**
> adminMaintenanceControllerGetAllPhraseRules()

Get all active phrase rules

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerGetAllPhraseRules();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerGetAllPhraseRules: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerGetEmbeddingStats**
> adminMaintenanceControllerGetEmbeddingStats()

Get embedding statistics

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerGetEmbeddingStats();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerGetEmbeddingStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerGetEntityTypes**
> adminMaintenanceControllerGetEntityTypes()

List all dictionary entity types

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerGetEntityTypes();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerGetEntityTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerGetParseRulesTemplate**
> adminMaintenanceControllerGetParseRulesTemplate()

Get phrase rules template (seed JSON)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerGetParseRulesTemplate();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerGetParseRulesTemplate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerGetSnapshot**
> adminMaintenanceControllerGetSnapshot()

Get current dictionary snapshot

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerGetSnapshot();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerGetSnapshot: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerParseText**
> adminMaintenanceControllerParseText(body)

Parse and normalize text

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();
final Object body = ; // Object | 

try {
    api.adminMaintenanceControllerParseText(body);
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerParseText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerRebuildAll**
> adminMaintenanceControllerRebuildAll()

Full rebuild: dictionary + embeddings + BM25

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerRebuildAll();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerRebuildAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerRebuildDictionary**
> adminMaintenanceControllerRebuildDictionary()

Rebuild dictionary only

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerRebuildDictionary();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerRebuildDictionary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerRebuildEmbeddings**
> adminMaintenanceControllerRebuildEmbeddings()

Rebuild all embeddings

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerRebuildEmbeddings();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerRebuildEmbeddings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerRebuildProductEmbedding**
> adminMaintenanceControllerRebuildProductEmbedding(productId)

Rebuild embedding for a specific product

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();
final String productId = productId_example; // String | 

try {
    api.adminMaintenanceControllerRebuildProductEmbedding(productId);
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerRebuildProductEmbedding: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMaintenanceControllerRefreshVocabBm25**
> adminMaintenanceControllerRefreshVocabBm25()

Refresh vocab BM25 materialized view

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getAdminMaintenanceApi();

try {
    api.adminMaintenanceControllerRefreshVocabBm25();
} on DioException catch (e) {
    print('Exception when calling AdminMaintenanceApi->adminMaintenanceControllerRefreshVocabBm25: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

