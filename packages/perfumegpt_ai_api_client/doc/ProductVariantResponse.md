# perfumegpt_ai_api_client.model.ProductVariantResponse

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID variant | 
**productId** | **String** | ID sản phẩm | 
**sku** | **String** | SKU | 
**barcode** | **String** | Barcode | 
**volumeMl** | **num** | Dung tích (ml) | 
**type** | **String** | Loại sản phẩm | 
**basePrice** | **num** | Giá gốc | 
**status** | **String** | Trạng thái variant | 
**concentrationId** | **num** | ID nồng độ | 
**concentration** | [**ConcentrationResponse**](ConcentrationResponse.md) | Thông tin nồng độ | [optional] 
**stock** | [**VariantStockResponse**](VariantStockResponse.md) | Thông tin tồn kho | [optional] 
**media** | [**List&lt;VariantMediaResponse&gt;**](VariantMediaResponse.md) | Danh sách hình ảnh | 
**attributes** | [**List&lt;ProductAttributeResponse&gt;**](ProductAttributeResponse.md) | Danh sách thuộc tính variant | 
**longevity** | **num** | Độ lưu hương (Longevity) | [optional] 
**sillage** | **num** | Độ tỏa hương (Sillage) | [optional] 
**createdAt** | **String** | Ngày tạo | 
**updatedAt** | **Object** | Ngày cập nhật | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


