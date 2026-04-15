# perfumegpt_api_client.model.ProductWithVariantsResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID sản phẩm | 
**name** | **String** | Tên sản phẩm | 
**brandId** | **num** | ID thương hiệu | 
**brandName** | **String** | Tên thương hiệu | 
**categoryId** | **num** | ID danh mục | 
**categoryName** | **String** | Tên danh mục | 
**description** | **String** | Mô tả sản phẩm | 
**primaryImage** | **Object** | URL hình ảnh chính | [optional] 
**variants** | [**List&lt;ProductVariantResponse&gt;**](ProductVariantResponse.md) | Danh sách biến thể | 
**scentNotes** | **List&lt;String&gt;** | Danh sách nốt hương | 
**olfactoryFamilies** | **List&lt;String&gt;** | Danh sách nhóm hương | 
**attributes** | [**List&lt;ProductAttributeResponse&gt;**](ProductAttributeResponse.md) | Danh sách thuộc tính sản phẩm | 
**createdAt** | **String** | Ngày tạo | 
**updatedAt** | **Object** | Ngày cập nhật | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


