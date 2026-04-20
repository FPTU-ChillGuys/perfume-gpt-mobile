# perfumegpt_ai_api_client.model.EventLog

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID duy nhất (UUID) | 
**createdAt** | [**DateTime**](DateTime.md) | Ngày tạo bản ghi | 
**updatedAt** | [**DateTime**](DateTime.md) | Ngày cập nhật gần nhất | 
**isActive** | **bool** | Trạng thái hoạt động | 
**userId** | **String** | ID người dùng (nullable cho anonymous/system) | 
**eventType** | **String** | Loại sự kiện log | 
**entityType** | **String** | Loại thực thể liên quan | 
**entityId** | **String** | ID thực thể liên quan (nullable) | 
**contentText** | **String** | Nội dung text cho message/search | 
**metadata** | **Object** | Metadata dạng JSONB cho survey và dữ liệu mở rộng | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


