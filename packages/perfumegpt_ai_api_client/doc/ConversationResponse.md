# perfumegpt_ai_api_client.model.ConversationResponse

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | ID người dùng | 
**userName** | **String** | Tên người dùng (resolved từ DB) | [optional] [default to 'Khách']
**messages** | [**List&lt;MessageResponse&gt;**](MessageResponse.md) | Danh sách tin nhắn | 
**updatedAt** | [**DateTime**](DateTime.md) | Ngày cập nhật | 
**isMobile** | **bool** | Đánh dấu response cho Mobile | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


