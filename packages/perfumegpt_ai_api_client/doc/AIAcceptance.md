# perfumegpt_ai_api_client.model.AIAcceptance

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
**responseId** | **Object** | ID acceptance cho một response (dùng để nhóm theo lần phản hồi) | 
**contextType** | **Object** | Ngữ cảnh phát sinh acceptance (chatbot/survey/trend/recommendation/repurchase/cart_legacy) | 
**sourceRefId** | **Object** | Mã tham chiếu nguồn (conversationId, surveyId, ...) nếu có | 
**productIdsJson** | **Object** | Danh sách product id dưới dạng JSON string | 
**metadataJson** | **Object** | Metadata mở rộng dưới dạng JSON string | 
**visibleAfterAt** | **Object** | Thời điểm false no-click được phép hiển thị | 
**clickedAt** | **Object** | Thời điểm người dùng click chấp nhận | 
**isAccepted** | **bool** | Trạng thái chấp nhận AI | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


