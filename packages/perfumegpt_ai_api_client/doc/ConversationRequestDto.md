# perfumegpt_ai_api_client.model.ConversationRequestDto

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID cuộc hội thoại | 
**userId** | **String** | ID người dùng (tự động lấy từ token, không cần truyền) | [optional] 
**messages** | [**List&lt;MessageRequestDto&gt;**](MessageRequestDto.md) | Danh sách tin nhắn | 
**isStaff** | **bool** | Chế độ nhân viên tư vấn tại quầy | [optional] 
**isMobile** | **bool** | Client là Mobile App | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


