# perfumegpt_ai_api_client.model.EventLogResponse

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | ID người dùng (nullable cho anonymous/system) | 
**userName** | **String** | Tên người dùng (resolved từ DB) | [optional] [default to 'Khách']
**eventType** | **String** | Loại sự kiện log | 
**entityType** | **String** | Loại thực thể liên quan | 
**entityId** | **String** | ID thực thể liên quan (nullable) | 
**contentText** | **String** | Nội dung text cho message/search | 
**metadata** | **Object** | Metadata dạng JSONB cho survey và dữ liệu mở rộng | 
**createdAt** | [**DateTime**](DateTime.md) | Ngày tạo | 
**updatedAt** | [**DateTime**](DateTime.md) | Ngày cập nhật | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


