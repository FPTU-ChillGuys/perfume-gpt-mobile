# perfumegpt_ai_api_client.model.ChatMessageRequest

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Người gửi tin nhắn (user hoặc assistant) | 
**message** | **String** | Nội dung tin nhắn dạng text | 
**products** | [**List&lt;ProductCardOutputItemDto&gt;**](ProductCardOutputItemDto.md) | Danh sách sản phẩm gợi ý | [optional] 
**productTemp** | [**List&lt;ProductTempItemDto&gt;**](ProductTempItemDto.md) | Danh sách sản phẩm tạm | [optional] 
**suggestedQuestions** | **List&lt;String&gt;** | Gợi ý 3-4 câu hỏi tiếp theo | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


