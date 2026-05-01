# perfumegpt_ai_api_client.model.ChatRequest

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID cuộc hội thoại | 
**userId** | **String** | ID người dùng (optional — tự động lấy từ JWT token nếu không truyền) | [optional] 
**messages** | [**List&lt;ChatMessageRequest&gt;**](ChatMessageRequest.md) | Danh sách tin nhắn | 
**isStaff** | **bool** | Chế độ nhân viên tư vấn tại quầy | [optional] [default to false]
**isMobile** | **bool** | Client là Mobile App | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


