# perfumegpt_api_client.model.VariantSalesAnalyticsResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variantId** | **String** | ID variant | 
**sku** | **String** | SKU của variant | 
**productName** | **String** | Tên sản phẩm | 
**volumeMl** | **num** | Dung tích (ml) | 
**type** | **String** | Loại variant | 
**basePrice** | **num** | Giá gốc | 
**status** | **String** | Trạng thái | 
**concentrationName** | **Object** | Tên nồng độ | 
**dailySalesData** | [**List&lt;DailySalesRecord&gt;**](DailySalesRecord.md) | Dữ liệu bán hàng theo ngày | 
**totalQuantitySold** | **num** | Tổng số lượng bán trong 2 tháng | 
**totalRevenue** | **num** | Tổng doanh thu trong 2 tháng | 
**averageDailySales** | **num** | Trung bình số lượng bán mỗi ngày | 
**periodStartDate** | **String** | Ngày bắt đầu phân tích | 
**periodEndDate** | **String** | Ngày kết thúc phân tích | 
**daysWithSalesCount** | **num** | Số ngày có dữ liệu bán hàng | 
**salesMetrics** | [**SalesMetrics**](SalesMetrics.md) | Metrics tối ưu cho LLM dự đoán restock | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


