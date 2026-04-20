# perfumegpt_ai_api_client.model.UserLogSummaryRequest

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | ID người dùng | 
**startDate** | [**DateTime**](DateTime.md) | Ngày bắt đầu (legacy) | [optional] 
**endDate** | [**DateTime**](DateTime.md) | Ngày kết thúc (legacy) | [optional] 
**logSummary** | **String** | Nội dung tóm tắt log | [default to '']
**featureSnapshot** | **Object** | Feature snapshot dạng JSON | [optional] 
**dailyLogSummary** | **Object** | Bản tóm tắt log theo ngày | [optional] 
**dailyFeatureSnapshot** | **Object** | Feature snapshot theo ngày | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


