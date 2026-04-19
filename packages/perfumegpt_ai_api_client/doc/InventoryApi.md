# perfumegpt_ai_api_client.api.InventoryApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventoryControllerConvertInventoryLogToPdf**](InventoryApi.md#inventorycontrollerconvertinventorylogtopdf) | **GET** /inventory/report/logs/{id}/pdf | Convert markdown report theo ID sang PDF (không dùng AI)
[**inventoryControllerConvertRestockLogToPdf**](InventoryApi.md#inventorycontrollerconvertrestocklogtopdf) | **GET** /inventory/restock/logs/{id}/pdf | Convert log restock theo ID sang PDF (không dùng AI)
[**inventoryControllerCreateInventoryReportJob**](InventoryApi.md#inventorycontrollercreateinventoryreportjob) | **GET** /inventory/report/ai/job | Khởi tạo job để tạo báo cáo tồn kho bằng AI
[**inventoryControllerCreateRestockReportJob**](InventoryApi.md#inventorycontrollercreaterestockreportjob) | **GET** /inventory/restock/job | Khởi tạo job để phân tích nhu cầu nhập hàng (restock)
[**inventoryControllerGetAIInventoryReport**](InventoryApi.md#inventorycontrollergetaiinventoryreport) | **GET** /inventory/report/ai | Tạo báo cáo tồn kho bằng AI
[**inventoryControllerGetAIRestockingNeeds**](InventoryApi.md#inventorycontrollergetairestockingneeds) | **GET** /inventory/restock/ai | Phân tích nhu cầu nhập hàng dựa trên xu hướng (AI)
[**inventoryControllerGetBatch**](InventoryApi.md#inventorycontrollergetbatch) | **GET** /inventory/batches | Lấy danh sách batch
[**inventoryControllerGetInventoryLogById**](InventoryApi.md#inventorycontrollergetinventorylogbyid) | **GET** /inventory/report/logs/{id} | Lấy chi tiết báo cáo tồn kho theo ID
[**inventoryControllerGetInventoryReport**](InventoryApi.md#inventorycontrollergetinventoryreport) | **GET** /inventory/report | Lấy báo cáo tồn kho
[**inventoryControllerGetInventoryReportJobResult**](InventoryApi.md#inventorycontrollergetinventoryreportjobresult) | **GET** /inventory/report/ai/job/result/{jobId} | Kiểm tra trạng thái hoàn thành của job báo cáo tồn kho
[**inventoryControllerGetInventoryReportLogs**](InventoryApi.md#inventorycontrollergetinventoryreportlogs) | **GET** /inventory/report/logs | Lấy lịch sử báo cáo tồn kho tổng quan
[**inventoryControllerGetInventoryRestockLogs**](InventoryApi.md#inventorycontrollergetinventoryrestocklogs) | **GET** /inventory/restock/logs | Lấy lịch sử phân tích nhu cầu nhập hàng (restock)
[**inventoryControllerGetInventoryStock**](InventoryApi.md#inventorycontrollergetinventorystock) | **GET** /inventory/stock | Lấy thông tin tồn kho
[**inventoryControllerGetProductSalesAnalyticsById**](InventoryApi.md#inventorycontrollergetproductsalesanalyticsbyid) | **GET** /inventory/restock/sales-analytics/{id} | Lấy dữ liệu phân tích bán hàng một variant
[**inventoryControllerGetProductSalesAnalyticsForRestock**](InventoryApi.md#inventorycontrollergetproductsalesanalyticsforrestock) | **GET** /inventory/restock/sales-analytics | Lấy dữ liệu phân tích bán hàng tất cả variant
[**inventoryControllerGetRestockJobResult**](InventoryApi.md#inventorycontrollergetrestockjobresult) | **GET** /inventory/restock/job/result/{jobId} | Kiểm tra trạng thái hoàn thành của job phân tích nhu cầu nhập hàng (restock)
[**inventoryControllerGetStructuredAIInventoryReport**](InventoryApi.md#inventorycontrollergetstructuredaiinventoryreport) | **GET** /inventory/report/ai/structured | Tạo báo cáo tồn kho AI có cấu trúc


# **inventoryControllerConvertInventoryLogToPdf**
> inventoryControllerConvertInventoryLogToPdf(id)

Convert markdown report theo ID sang PDF (không dùng AI)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final String id = id_example; // String | ID của inventory log cần convert

try {
    api.inventoryControllerConvertInventoryLogToPdf(id);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerConvertInventoryLogToPdf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID của inventory log cần convert | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerConvertRestockLogToPdf**
> inventoryControllerConvertRestockLogToPdf(id)

Convert log restock theo ID sang PDF (không dùng AI)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final String id = id_example; // String | ID của restock log cần convert

try {
    api.inventoryControllerConvertRestockLogToPdf(id);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerConvertRestockLogToPdf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID của restock log cần convert | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerCreateInventoryReportJob**
> EmailControllerSendEmail200Response inventoryControllerCreateInventoryReportJob(forceRefresh)

Khởi tạo job để tạo báo cáo tồn kho bằng AI

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final bool forceRefresh = true; // bool | True để bỏ qua job đang cache và tạo job mới ngay lập tức

try {
    final response = api.inventoryControllerCreateInventoryReportJob(forceRefresh);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerCreateInventoryReportJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forceRefresh** | **bool**| True để bỏ qua job đang cache và tạo job mới ngay lập tức | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerCreateRestockReportJob**
> EmailControllerSendEmail200Response inventoryControllerCreateRestockReportJob(forceRefresh)

Khởi tạo job để phân tích nhu cầu nhập hàng (restock)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final bool forceRefresh = true; // bool | True để bỏ qua job đang cache và tạo job mới ngay lập tức

try {
    final response = api.inventoryControllerCreateRestockReportJob(forceRefresh);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerCreateRestockReportJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forceRefresh** | **bool**| True để bỏ qua job đang cache và tạo job mới ngay lập tức | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetAIInventoryReport**
> EmailControllerSendEmail200Response inventoryControllerGetAIInventoryReport()

Tạo báo cáo tồn kho bằng AI

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetAIInventoryReport();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetAIInventoryReport: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetAIRestockingNeeds**
> TrendControllerGetProductTrendJobResult200Response inventoryControllerGetAIRestockingNeeds()

Phân tích nhu cầu nhập hàng dựa trên xu hướng (AI)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetAIRestockingNeeds();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetAIRestockingNeeds: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetBatch**
> LogControllerGetPagedEventLogs200Response inventoryControllerGetBatch(pageNumber, pageSize, sortOrder, isDescending, id, variantId, variantSku, productName, volumeMl, concentrationName, batchCode, manufactureDate, expiryDate, importQuantity, remainingQuantity, isExpired, daysUntilExpiry, createdAt)

Lấy danh sách batch

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String id = id_example; // String | Batch ID
final String variantId = variantId_example; // String | Variant ID
final String variantSku = variantSku_example; // String | Variant SKU
final String productName = productName_example; // String | Product name
final num volumeMl = 8.14; // num | Volume in milliliters
final String concentrationName = concentrationName_example; // String | Concentration name
final String batchCode = batchCode_example; // String | Batch code
final String manufactureDate = 2024-01-01; // String | Manufacture date
final String expiryDate = 2025-01-01; // String | Expiry date
final num importQuantity = 8.14; // num | Import quantity
final num remainingQuantity = 8.14; // num | Remaining quantity
final bool isExpired = true; // bool | Whether the batch is expired
final num daysUntilExpiry = 8.14; // num | Number of days until expiry
final String createdAt = 2024-01-01T00:00:00Z; // String | Created at timestamp

try {
    final response = api.inventoryControllerGetBatch(pageNumber, pageSize, sortOrder, isDescending, id, variantId, variantSku, productName, volumeMl, concentrationName, batchCode, manufactureDate, expiryDate, importQuantity, remainingQuantity, isExpired, daysUntilExpiry, createdAt);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **id** | **String**| Batch ID | [optional] 
 **variantId** | **String**| Variant ID | [optional] 
 **variantSku** | **String**| Variant SKU | [optional] 
 **productName** | **String**| Product name | [optional] 
 **volumeMl** | **num**| Volume in milliliters | [optional] 
 **concentrationName** | **String**| Concentration name | [optional] 
 **batchCode** | **String**| Batch code | [optional] 
 **manufactureDate** | **String**| Manufacture date | [optional] 
 **expiryDate** | **String**| Expiry date | [optional] 
 **importQuantity** | **num**| Import quantity | [optional] 
 **remainingQuantity** | **num**| Remaining quantity | [optional] 
 **isExpired** | **bool**| Whether the batch is expired | [optional] 
 **daysUntilExpiry** | **num**| Number of days until expiry | [optional] 
 **createdAt** | **String**| Created at timestamp | [optional] 

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetInventoryLogById**
> InventoryControllerGetInventoryLogById200Response inventoryControllerGetInventoryLogById(id)

Lấy chi tiết báo cáo tồn kho theo ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final String id = id_example; // String | 

try {
    final response = api.inventoryControllerGetInventoryLogById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetInventoryLogById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InventoryControllerGetInventoryLogById200Response**](InventoryControllerGetInventoryLogById200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetInventoryReport**
> EmailControllerSendEmail200Response inventoryControllerGetInventoryReport()

Lấy báo cáo tồn kho

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetInventoryReport();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetInventoryReport: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetInventoryReportJobResult**
> TrendControllerGetProductTrendJobResult200Response inventoryControllerGetInventoryReportJobResult(jobId)

Kiểm tra trạng thái hoàn thành của job báo cáo tồn kho

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final String jobId = jobId_example; // String | ID của job

try {
    final response = api.inventoryControllerGetInventoryReportJobResult(jobId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetInventoryReportJobResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| ID của job | 

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetInventoryReportLogs**
> LogControllerGetPagedEventLogs200Response inventoryControllerGetInventoryReportLogs()

Lấy lịch sử báo cáo tồn kho tổng quan

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetInventoryReportLogs();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetInventoryReportLogs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetInventoryRestockLogs**
> LogControllerGetPagedEventLogs200Response inventoryControllerGetInventoryRestockLogs()

Lấy lịch sử phân tích nhu cầu nhập hàng (restock)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetInventoryRestockLogs();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetInventoryRestockLogs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetInventoryStock**
> LogControllerGetPagedEventLogs200Response inventoryControllerGetInventoryStock(pageNumber, pageSize, sortOrder, isDescending, variantId, searchTerm, isLowStock)

Lấy thông tin tồn kho

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String variantId = variantId_example; // String | Filter by variant ID
final String searchTerm = searchTerm_example; // String | Search term for filtering
final bool isLowStock = true; // bool | Filter by low stock status

try {
    final response = api.inventoryControllerGetInventoryStock(pageNumber, pageSize, sortOrder, isDescending, variantId, searchTerm, isLowStock);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetInventoryStock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **variantId** | **String**| Filter by variant ID | [optional] 
 **searchTerm** | **String**| Search term for filtering | [optional] 
 **isLowStock** | **bool**| Filter by low stock status | [optional] 

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetProductSalesAnalyticsById**
> InventoryControllerGetProductSalesAnalyticsById200Response inventoryControllerGetProductSalesAnalyticsById(id)

Lấy dữ liệu phân tích bán hàng một variant

Lấy thông tin variant kèm dữ liệu bán hàng theo ngày từ 2 tháng gần nhất

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | UUID của variant

try {
    final response = api.inventoryControllerGetProductSalesAnalyticsById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetProductSalesAnalyticsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID của variant | 

### Return type

[**InventoryControllerGetProductSalesAnalyticsById200Response**](InventoryControllerGetProductSalesAnalyticsById200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetProductSalesAnalyticsForRestock**
> InventoryControllerGetProductSalesAnalyticsForRestock200Response inventoryControllerGetProductSalesAnalyticsForRestock()

Lấy dữ liệu phân tích bán hàng tất cả variant

Lấy thông tin variant kèm dữ liệu bán hàng theo ngày từ 2 tháng gần nhất, sử dụng cho tool dự đoán tái cấp hàng

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetProductSalesAnalyticsForRestock();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetProductSalesAnalyticsForRestock: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InventoryControllerGetProductSalesAnalyticsForRestock200Response**](InventoryControllerGetProductSalesAnalyticsForRestock200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetRestockJobResult**
> TrendControllerGetProductTrendJobResult200Response inventoryControllerGetRestockJobResult(jobId)

Kiểm tra trạng thái hoàn thành của job phân tích nhu cầu nhập hàng (restock)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();
final String jobId = jobId_example; // String | ID của job

try {
    final response = api.inventoryControllerGetRestockJobResult(jobId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetRestockJobResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| ID của job | 

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryControllerGetStructuredAIInventoryReport**
> InventoryControllerGetStructuredAIInventoryReport200Response inventoryControllerGetStructuredAIInventoryReport()

Tạo báo cáo tồn kho AI có cấu trúc

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getInventoryApi();

try {
    final response = api.inventoryControllerGetStructuredAIInventoryReport();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InventoryApi->inventoryControllerGetStructuredAIInventoryReport: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InventoryControllerGetStructuredAIInventoryReport200Response**](InventoryControllerGetStructuredAIInventoryReport200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

