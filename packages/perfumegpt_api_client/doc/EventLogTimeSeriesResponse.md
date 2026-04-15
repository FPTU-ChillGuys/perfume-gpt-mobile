# perfumegpt_api_client.model.EventLogTimeSeriesResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | ID người dùng | [optional] 
**startDate** | [**DateTime**](DateTime.md) | Ngày bắt đầu thống kê | [optional] 
**endDate** | [**DateTime**](DateTime.md) | Ngày kết thúc thống kê | [optional] 
**granularity** | **String** | Mức gộp dữ liệu | 
**points** | [**List&lt;EventLogTimeSeriesPointResponse&gt;**](EventLogTimeSeriesPointResponse.md) | Các điểm dữ liệu time-series | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


