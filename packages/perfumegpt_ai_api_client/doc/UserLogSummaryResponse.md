# perfumegpt_ai_api_client.model.UserLogSummaryResponse

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID bản ghi | 
**createdAt** | [**DateTime**](DateTime.md) | Ngày tạo | 
**updatedAt** | [**DateTime**](DateTime.md) | Ngày cập nhật gần nhất | 
**isActive** | **bool** | Trạng thái hoạt động | 
**userId** | **String** | ID người dùng | 
**logSummary** | **String** | Nội dung tóm tắt log | 
**featureSnapshot** | **Object** | Feature snapshot dạng JSON | [optional] 
**dailyLogSummary** | **Object** | Bản tóm tắt log theo ngày | [optional] 
**dailyFeatureSnapshot** | **Object** | Feature snapshot theo ngày | [optional] 
**totalEvents** | **num** | Tổng số event đã xử lý | [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


