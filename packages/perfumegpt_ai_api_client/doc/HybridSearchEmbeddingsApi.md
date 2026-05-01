# perfumegpt_ai_api_client.api.HybridSearchEmbeddingsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rebuildEmbeddingsControllerDeleteEmbedding**](HybridSearchEmbeddingsApi.md#rebuildembeddingscontrollerdeleteembedding) | **DELETE** /hybrid-search/embeddings/{productId} | Xóa embedding của 1 product
[**rebuildEmbeddingsControllerGetStats**](HybridSearchEmbeddingsApi.md#rebuildembeddingscontrollergetstats) | **GET** /hybrid-search/embeddings/stats | Get stats về embeddings
[**rebuildEmbeddingsControllerRebuildAll**](HybridSearchEmbeddingsApi.md#rebuildembeddingscontrollerrebuildall) | **POST** /hybrid-search/embeddings/rebuild | Rebuild tất cả embeddings
[**rebuildEmbeddingsControllerRebuildOne**](HybridSearchEmbeddingsApi.md#rebuildembeddingscontrollerrebuildone) | **POST** /hybrid-search/embeddings/rebuild/{productId} | Rebuild embedding cho 1 product cụ thể


# **rebuildEmbeddingsControllerDeleteEmbedding**
> rebuildEmbeddingsControllerDeleteEmbedding(productId)

Xóa embedding của 1 product

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getHybridSearchEmbeddingsApi();
final String productId = productId_example; // String | 

try {
    api.rebuildEmbeddingsControllerDeleteEmbedding(productId);
} on DioException catch (e) {
    print('Exception when calling HybridSearchEmbeddingsApi->rebuildEmbeddingsControllerDeleteEmbedding: $e\n');
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

# **rebuildEmbeddingsControllerGetStats**
> rebuildEmbeddingsControllerGetStats()

Get stats về embeddings

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getHybridSearchEmbeddingsApi();

try {
    api.rebuildEmbeddingsControllerGetStats();
} on DioException catch (e) {
    print('Exception when calling HybridSearchEmbeddingsApi->rebuildEmbeddingsControllerGetStats: $e\n');
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

# **rebuildEmbeddingsControllerRebuildAll**
> rebuildEmbeddingsControllerRebuildAll()

Rebuild tất cả embeddings

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getHybridSearchEmbeddingsApi();

try {
    api.rebuildEmbeddingsControllerRebuildAll();
} on DioException catch (e) {
    print('Exception when calling HybridSearchEmbeddingsApi->rebuildEmbeddingsControllerRebuildAll: $e\n');
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

# **rebuildEmbeddingsControllerRebuildOne**
> rebuildEmbeddingsControllerRebuildOne(productId)

Rebuild embedding cho 1 product cụ thể

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getHybridSearchEmbeddingsApi();
final String productId = productId_example; // String | 

try {
    api.rebuildEmbeddingsControllerRebuildOne(productId);
} on DioException catch (e) {
    print('Exception when calling HybridSearchEmbeddingsApi->rebuildEmbeddingsControllerRebuildOne: $e\n');
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

