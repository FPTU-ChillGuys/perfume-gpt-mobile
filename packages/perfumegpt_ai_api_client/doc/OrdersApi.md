# perfumegpt_ai_api_client.api.OrdersApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderControllerGetAIOrderSummary**](OrdersApi.md#ordercontrollergetaiordersummary) | **GET** /orders/summary/ai | Tạo báo cáo tóm tắt đơn hàng bằng AI
[**orderControllerGetAllOrders**](OrdersApi.md#ordercontrollergetallorders) | **GET** /orders | Lấy danh sách tất cả đơn hàng
[**orderControllerGetOrdersByUserId**](OrdersApi.md#ordercontrollergetordersbyuserid) | **GET** /orders/user/{userId} | Lấy đơn hàng theo user ID
[**orderControllerGetStructuredAIOrderSummary**](OrdersApi.md#ordercontrollergetstructuredaiordersummary) | **GET** /orders/summary/ai/structured | Tạo báo cáo tóm tắt đơn hàng AI có cấu trúc


# **orderControllerGetAIOrderSummary**
> EmailControllerSendEmail200Response orderControllerGetAIOrderSummary(userId)

Tạo báo cáo tóm tắt đơn hàng bằng AI

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getOrdersApi();
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.orderControllerGetAIOrderSummary(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->orderControllerGetAIOrderSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderControllerGetAllOrders**
> LogControllerGetPagedEventLogs200Response orderControllerGetAllOrders(pageNumber, pageSize, sortOrder, isDescending, status, type, paymentStatus, fromDate, toDate, searchTerm)

Lấy danh sách tất cả đơn hàng

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getOrdersApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String status = Pending; // String | Trạng thái đơn hàng
final String type = Online; // String | Loại đơn hàng
final String paymentStatus = Unpaid; // String | Trạng thái thanh toán
final String fromDate = 2024-01-01; // String | Ngày bắt đầu (ISO 8601)
final String toDate = 2024-12-31; // String | Ngày kết thúc (ISO 8601)
final String searchTerm = perfume; // String | Từ khóa tìm kiếm

try {
    final response = api.orderControllerGetAllOrders(pageNumber, pageSize, sortOrder, isDescending, status, type, paymentStatus, fromDate, toDate, searchTerm);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->orderControllerGetAllOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **status** | **String**| Trạng thái đơn hàng | [optional] 
 **type** | **String**| Loại đơn hàng | [optional] 
 **paymentStatus** | **String**| Trạng thái thanh toán | [optional] 
 **fromDate** | **String**| Ngày bắt đầu (ISO 8601) | [optional] 
 **toDate** | **String**| Ngày kết thúc (ISO 8601) | [optional] 
 **searchTerm** | **String**| Từ khóa tìm kiếm | [optional] 

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderControllerGetOrdersByUserId**
> LogControllerGetPagedEventLogs200Response orderControllerGetOrdersByUserId(userId, pageNumber, pageSize, sortOrder, isDescending, status, type, paymentStatus, fromDate, toDate, searchTerm)

Lấy đơn hàng theo user ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getOrdersApi();
final String userId = userId_example; // String | ID của người dùng
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String status = Pending; // String | Trạng thái đơn hàng
final String type = Online; // String | Loại đơn hàng
final String paymentStatus = Unpaid; // String | Trạng thái thanh toán
final String fromDate = 2024-01-01; // String | Ngày bắt đầu (ISO 8601)
final String toDate = 2024-12-31; // String | Ngày kết thúc (ISO 8601)
final String searchTerm = perfume; // String | Từ khóa tìm kiếm

try {
    final response = api.orderControllerGetOrdersByUserId(userId, pageNumber, pageSize, sortOrder, isDescending, status, type, paymentStatus, fromDate, toDate, searchTerm);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->orderControllerGetOrdersByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **status** | **String**| Trạng thái đơn hàng | [optional] 
 **type** | **String**| Loại đơn hàng | [optional] 
 **paymentStatus** | **String**| Trạng thái thanh toán | [optional] 
 **fromDate** | **String**| Ngày bắt đầu (ISO 8601) | [optional] 
 **toDate** | **String**| Ngày kết thúc (ISO 8601) | [optional] 
 **searchTerm** | **String**| Từ khóa tìm kiếm | [optional] 

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderControllerGetStructuredAIOrderSummary**
> OrderControllerGetStructuredAIOrderSummary200Response orderControllerGetStructuredAIOrderSummary(userId)

Tạo báo cáo tóm tắt đơn hàng AI có cấu trúc

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getOrdersApi();
final String userId = userId_example; // String | ID của người dùng

try {
    final response = api.orderControllerGetStructuredAIOrderSummary(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrdersApi->orderControllerGetStructuredAIOrderSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 

### Return type

[**OrderControllerGetStructuredAIOrderSummary200Response**](OrderControllerGetStructuredAIOrderSummary200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

