# perfumegpt_ai_api_client.model.HybridSearchResponse

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List&lt;ProductWithVariantsResponse&gt;**](ProductWithVariantsResponse.md) | Danh sách bản ghi | 
**pageNumber** | **num** | Số trang hiện tại | 
**pageSize** | **num** | Số bản ghi mỗi trang | 
**totalCount** | **num** | Tổng số bản ghi | 
**totalPages** | **num** | Tổng số trang | 
**queryFilters** | [**NormalizedQueryFilters**](NormalizedQueryFilters.md) | Filters found in query | [optional] 
**vectorSimilarity** | **bool** | Whether vector similarity was used | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


