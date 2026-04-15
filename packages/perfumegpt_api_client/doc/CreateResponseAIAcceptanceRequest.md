# perfumegpt_api_client.model.CreateResponseAIAcceptanceRequest

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | ID người dùng (optional trong trường hợp nguồn không có user cụ thể) | [optional] 
**contextType** | **String** | Ngữ cảnh phát sinh AI acceptance | 
**sourceRefId** | **String** | Mã tham chiếu nguồn (conversationId/surveyId/...) | [optional] 
**productIds** | **List&lt;String&gt;** | Danh sách id sản phẩm trong response | [optional] 
**visibleInHours** | **num** | Số giờ delay trước khi false được xem là no-click | [optional] [default to 24]
**metadata** | **Object** | Metadata mở rộng | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


