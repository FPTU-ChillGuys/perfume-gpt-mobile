# perfumegpt_api_client.api.TrendsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trendControllerCreateProductTrendJob**](TrendsApi.md#trendcontrollercreateproducttrendjob) | **GET** /trends/product/job | Khởi tạo job để lấy product từ xu hướng
[**trendControllerGetProductFromTrendCaching**](TrendsApi.md#trendcontrollergetproductfromtrendcaching) | **GET** /trends/product/caching | Lấy product từ xu hướng người dùng (caching)
[**trendControllerGetProductNoCaching**](TrendsApi.md#trendcontrollergetproductnocaching) | **GET** /trends/product | Lấy product từ xu hướng người dùng
[**trendControllerGetProductTrendJobResult**](TrendsApi.md#trendcontrollergetproducttrendjobresult) | **GET** /trends/product/job/{jobId} | Kiểm tra trạng thái hoàn thành của job
[**trendControllerSummarizeLogs**](TrendsApi.md#trendcontrollersummarizelogs) | **GET** /trends/summary | Dự đoán xu hướng dựa trên tổng hợp log người dùng
[**trendControllerSummarizeLogsStructured**](TrendsApi.md#trendcontrollersummarizelogsstructured) | **GET** /trends/summary/structured | Dự đoán xu hướng có cấu trúc với metadata


# **trendControllerCreateProductTrendJob**
> EmailControllerSendEmail200Response trendControllerCreateProductTrendJob(endDate, forceRefresh, period, startDate)

Khởi tạo job để lấy product từ xu hướng

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getTrendsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final bool forceRefresh = true; // bool | Bắt buộc làm mới cache
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.trendControllerCreateProductTrendJob(endDate, forceRefresh, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendsApi->trendControllerCreateProductTrendJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **forceRefresh** | **bool**| Bắt buộc làm mới cache | [default to false]
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendControllerGetProductFromTrendCaching**
> TrendControllerGetProductFromTrendCaching200Response trendControllerGetProductFromTrendCaching(endDate, allUserLogRequest, period, startDate)

Lấy product từ xu hướng người dùng (caching)

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getTrendsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final AllUserLogRequest allUserLogRequest = ; // AllUserLogRequest | 
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.trendControllerGetProductFromTrendCaching(endDate, allUserLogRequest, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendsApi->trendControllerGetProductFromTrendCaching: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **allUserLogRequest** | [**AllUserLogRequest**](AllUserLogRequest.md)|  | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**TrendControllerGetProductFromTrendCaching200Response**](TrendControllerGetProductFromTrendCaching200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendControllerGetProductNoCaching**
> TrendControllerGetProductFromTrendCaching200Response trendControllerGetProductNoCaching(endDate, allUserLogRequest, period, startDate)

Lấy product từ xu hướng người dùng

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getTrendsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final AllUserLogRequest allUserLogRequest = ; // AllUserLogRequest | 
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.trendControllerGetProductNoCaching(endDate, allUserLogRequest, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendsApi->trendControllerGetProductNoCaching: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **allUserLogRequest** | [**AllUserLogRequest**](AllUserLogRequest.md)|  | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**TrendControllerGetProductFromTrendCaching200Response**](TrendControllerGetProductFromTrendCaching200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendControllerGetProductTrendJobResult**
> TrendControllerGetProductTrendJobResult200Response trendControllerGetProductTrendJobResult(jobId)

Kiểm tra trạng thái hoàn thành của job

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getTrendsApi();
final String jobId = jobId_example; // String | 

try {
    final response = api.trendControllerGetProductTrendJobResult(jobId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendsApi->trendControllerGetProductTrendJobResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 

### Return type

[**TrendControllerGetProductTrendJobResult200Response**](TrendControllerGetProductTrendJobResult200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendControllerSummarizeLogs**
> EmailControllerSendEmail200Response trendControllerSummarizeLogs(endDate, allUserLogRequest, period, startDate)

Dự đoán xu hướng dựa trên tổng hợp log người dùng

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getTrendsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final AllUserLogRequest allUserLogRequest = ; // AllUserLogRequest | 
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.trendControllerSummarizeLogs(endDate, allUserLogRequest, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendsApi->trendControllerSummarizeLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **allUserLogRequest** | [**AllUserLogRequest**](AllUserLogRequest.md)|  | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trendControllerSummarizeLogsStructured**
> TrendControllerSummarizeLogsStructured200Response trendControllerSummarizeLogsStructured(endDate, allUserLogRequest, period, startDate)

Dự đoán xu hướng có cấu trúc với metadata

### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getTrendsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final AllUserLogRequest allUserLogRequest = ; // AllUserLogRequest | 
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.trendControllerSummarizeLogsStructured(endDate, allUserLogRequest, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendsApi->trendControllerSummarizeLogsStructured: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **allUserLogRequest** | [**AllUserLogRequest**](AllUserLogRequest.md)|  | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**TrendControllerSummarizeLogsStructured200Response**](TrendControllerSummarizeLogsStructured200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

