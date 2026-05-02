# perfumegpt_ai_api_client.api.LogsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logControllerCollectLogs**](LogsApi.md#logcontrollercollectlogs) | **GET** /logs/report/activity/user | Lấy báo cáo log hoạt động người dùng
[**logControllerCreateEventLog**](LogsApi.md#logcontrollercreateeventlog) | **POST** /logs/events | Tạo event log theo contract mới
[**logControllerCreateUserLogSummary**](LogsApi.md#logcontrollercreateuserlogsummary) | **POST** /logs | Tạo bản tóm tắt log người dùng thủ công
[**logControllerGetAggregatedUserSummaryReport**](LogsApi.md#logcontrollergetaggregatedusersummaryreport) | **GET** /logs/report/summary/aggregate | Tổng hợp summary của nhiều người dùng (runtime only), gồm overall và daily breakdown
[**logControllerGetAllUserLogs**](LogsApi.md#logcontrollergetalluserlogs) | **GET** /logs/all | Lấy tất cả log hoạt động người dùng
[**logControllerGetAllUserLogsSummaries**](LogsApi.md#logcontrollergetalluserlogssummaries) | **GET** /logs/summaries | Xem chi tiết tất cả các bản tóm tắt log người dùng, gồm overall và daily breakdown
[**logControllerGetEventLogs**](LogsApi.md#logcontrollergeteventlogs) | **GET** /logs/events | Lấy event log dạng mới
[**logControllerGetEventLogsSummary**](LogsApi.md#logcontrollergeteventlogssummary) | **GET** /logs/events/summary | Thống kê nhanh event log cho dashboard
[**logControllerGetEventLogsTimeSeries**](LogsApi.md#logcontrollergeteventlogstimeseries) | **GET** /logs/events/summary/timeseries | Thống kê time-series event log cho dashboard chart
[**logControllerGetPagedEventLogs**](LogsApi.md#logcontrollergetpagedeventlogs) | **GET** /logs/events/paged | Lấy event log dạng mới có phân trang
[**logControllerGetReportFromAllLogs**](LogsApi.md#logcontrollergetreportfromalllogs) | **GET** /logs/report/activity/all | Lấy báo cáo tất cả log hoạt động người dùng
[**logControllerGetUserLogsSummariesById**](LogsApi.md#logcontrollergetuserlogssummariesbyid) | **GET** /logs/summaries/{userId} | Xem chi tiết các bản tóm tắt log người dùng, gồm overall và daily breakdown
[**logControllerGetUserLogsSummaryReportById**](LogsApi.md#logcontrollergetuserlogssummaryreportbyid) | **GET** /logs/report/summary | Xem báo cáo tóm tắt log người dùng theo ID
[**logControllerGetUserLogsWithPeriod**](LogsApi.md#logcontrollergetuserlogswithperiod) | **GET** /logs/all/period | Lấy tất cả log hoạt động người dùng theo khoảng thời gian
[**logControllerRebuildAllUsersSummary**](LogsApi.md#logcontrollerrebuildalluserssummary) | **POST** /logs/rebuild-summary-all | Rebuild rolling summary cho tất cả users có logs
[**logControllerRebuildUserSummary**](LogsApi.md#logcontrollerrebuildusersummary) | **POST** /logs/rebuild-summary/{userId} | Rebuild rolling summary cho user cụ thể từ logs


# **logControllerCollectLogs**
> SurveyControllerCreateSurveyQues200Response logControllerCollectLogs(userId, endDate, period, startDate)

Lấy báo cáo log hoạt động người dùng

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID người dùng
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.logControllerCollectLogs(userId, endDate, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerCollectLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID người dùng | 
 **endDate** | **DateTime**| Ngày kết thúc | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerCreateEventLog**
> SurveyControllerCreateSurveyQues200Response logControllerCreateEventLog(eventLogCreateRequest)

Tạo event log theo contract mới

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final EventLogCreateRequest eventLogCreateRequest = ; // EventLogCreateRequest | 

try {
    final response = api.logControllerCreateEventLog(eventLogCreateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerCreateEventLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventLogCreateRequest** | [**EventLogCreateRequest**](EventLogCreateRequest.md)|  | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerCreateUserLogSummary**
> SurveyControllerCreateSurveyQues200Response logControllerCreateUserLogSummary(userLogSummaryRequest)

Tạo bản tóm tắt log người dùng thủ công

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final UserLogSummaryRequest userLogSummaryRequest = ; // UserLogSummaryRequest | 

try {
    final response = api.logControllerCreateUserLogSummary(userLogSummaryRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerCreateUserLogSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userLogSummaryRequest** | [**UserLogSummaryRequest**](UserLogSummaryRequest.md)|  | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetAggregatedUserSummaryReport**
> LogControllerGetAggregatedUserSummaryReport200Response logControllerGetAggregatedUserSummaryReport(period, endDate, startDate)

Tổng hợp summary của nhiều người dùng (runtime only), gồm overall và daily breakdown

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.logControllerGetAggregatedUserSummaryReport(period, endDate, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetAggregatedUserSummaryReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **endDate** | **DateTime**| Ngày kết thúc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**LogControllerGetAggregatedUserSummaryReport200Response**](LogControllerGetAggregatedUserSummaryReport200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetAllUserLogs**
> LogControllerGetAllUserLogs200Response logControllerGetAllUserLogs()

Lấy tất cả log hoạt động người dùng

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();

try {
    final response = api.logControllerGetAllUserLogs();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetAllUserLogs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LogControllerGetAllUserLogs200Response**](LogControllerGetAllUserLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetAllUserLogsSummaries**
> LogControllerGetAllUserLogsSummaries200Response logControllerGetAllUserLogsSummaries(period, endDate, startDate)

Xem chi tiết tất cả các bản tóm tắt log người dùng, gồm overall và daily breakdown

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.logControllerGetAllUserLogsSummaries(period, endDate, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetAllUserLogsSummaries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **endDate** | **DateTime**| Ngày kết thúc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**LogControllerGetAllUserLogsSummaries200Response**](LogControllerGetAllUserLogsSummaries200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetEventLogs**
> LogControllerGetAllUserLogs200Response logControllerGetEventLogs(userId, eventType, startDate, endDate)

Lấy event log dạng mới

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = userId_example; // String | ID người dùng
final String eventType = eventType_example; // String | Loại event
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu lọc
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc lọc

try {
    final response = api.logControllerGetEventLogs(userId, eventType, startDate, endDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetEventLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID người dùng | [optional] 
 **eventType** | **String**| Loại event | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu lọc | [optional] 
 **endDate** | **DateTime**| Ngày kết thúc lọc | [optional] 

### Return type

[**LogControllerGetAllUserLogs200Response**](LogControllerGetAllUserLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetEventLogsSummary**
> LogControllerGetEventLogsSummary200Response logControllerGetEventLogsSummary(userId, startDate, endDate, granularity)

Thống kê nhanh event log cho dashboard

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = userId_example; // String | ID người dùng
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu lọc
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc lọc
final String granularity = granularity_example; // String | Mức gộp thống kê cho biểu đồ

try {
    final response = api.logControllerGetEventLogsSummary(userId, startDate, endDate, granularity);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetEventLogsSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID người dùng | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu lọc | [optional] 
 **endDate** | **DateTime**| Ngày kết thúc lọc | [optional] 
 **granularity** | **String**| Mức gộp thống kê cho biểu đồ | [optional] [default to 'day']

### Return type

[**LogControllerGetEventLogsSummary200Response**](LogControllerGetEventLogsSummary200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetEventLogsTimeSeries**
> LogControllerGetEventLogsTimeSeries200Response logControllerGetEventLogsTimeSeries(userId, startDate, endDate, granularity)

Thống kê time-series event log cho dashboard chart

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = userId_example; // String | ID người dùng
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu lọc
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc lọc
final String granularity = granularity_example; // String | Mức gộp thống kê cho biểu đồ

try {
    final response = api.logControllerGetEventLogsTimeSeries(userId, startDate, endDate, granularity);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetEventLogsTimeSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID người dùng | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu lọc | [optional] 
 **endDate** | **DateTime**| Ngày kết thúc lọc | [optional] 
 **granularity** | **String**| Mức gộp thống kê cho biểu đồ | [optional] [default to 'day']

### Return type

[**LogControllerGetEventLogsTimeSeries200Response**](LogControllerGetEventLogsTimeSeries200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetPagedEventLogs**
> LogControllerGetPagedEventLogs200Response logControllerGetPagedEventLogs(pageNumber, pageSize, sortOrder, isDescending, userId, eventType, startDate, endDate)

Lấy event log dạng mới có phân trang

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String userId = userId_example; // String | ID người dùng
final String eventType = eventType_example; // String | Loại event
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu lọc
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc lọc

try {
    final response = api.logControllerGetPagedEventLogs(pageNumber, pageSize, sortOrder, isDescending, userId, eventType, startDate, endDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetPagedEventLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **userId** | **String**| ID người dùng | [optional] 
 **eventType** | **String**| Loại event | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu lọc | [optional] 
 **endDate** | **DateTime**| Ngày kết thúc lọc | [optional] 

### Return type

[**LogControllerGetPagedEventLogs200Response**](LogControllerGetPagedEventLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetReportFromAllLogs**
> SurveyControllerCreateSurveyQues200Response logControllerGetReportFromAllLogs(endDate, period, startDate)

Lấy báo cáo tất cả log hoạt động người dùng

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.logControllerGetReportFromAllLogs(endDate, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetReportFromAllLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetUserLogsSummariesById**
> LogControllerGetAllUserLogsSummaries200Response logControllerGetUserLogsSummariesById(userId, period, endDate, startDate)

Xem chi tiết các bản tóm tắt log người dùng, gồm overall và daily breakdown

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = userId_example; // String | 
final String period = period_example; // String | 
final DateTime endDate = 2026-05-02T15:34:43.039Z; // DateTime | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.logControllerGetUserLogsSummariesById(userId, period, endDate, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetUserLogsSummariesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **period** | **String**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 

### Return type

[**LogControllerGetAllUserLogsSummaries200Response**](LogControllerGetAllUserLogsSummaries200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetUserLogsSummaryReportById**
> SurveyControllerCreateSurveyQues200Response logControllerGetUserLogsSummaryReportById(userId, endDate, startDate)

Xem báo cáo tóm tắt log người dùng theo ID

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = userId_example; // String | ID của người dùng
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.logControllerGetUserLogsSummaryReportById(userId, endDate, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetUserLogsSummaryReportById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID của người dùng | 
 **endDate** | **DateTime**| Ngày kết thúc | 
 **startDate** | **DateTime**| Ngày bắt đầu | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerGetUserLogsWithPeriod**
> LogControllerGetAllUserLogs200Response logControllerGetUserLogsWithPeriod(endDate, period, startDate)

Lấy tất cả log hoạt động người dùng theo khoảng thời gian

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày kết thúc
final String period = period_example; // String | Khoảng thời gian lọc
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | Ngày bắt đầu

try {
    final response = api.logControllerGetUserLogsWithPeriod(endDate, period, startDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerGetUserLogsWithPeriod: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **DateTime**| Ngày kết thúc | 
 **period** | **String**| Khoảng thời gian lọc | [optional] 
 **startDate** | **DateTime**| Ngày bắt đầu | [optional] 

### Return type

[**LogControllerGetAllUserLogs200Response**](LogControllerGetAllUserLogs200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerRebuildAllUsersSummary**
> SurveyControllerCreateSurveyQues200Response logControllerRebuildAllUsersSummary()

Rebuild rolling summary cho tất cả users có logs

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();

try {
    final response = api.logControllerRebuildAllUsersSummary();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerRebuildAllUsersSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logControllerRebuildUserSummary**
> SurveyControllerCreateSurveyQues200Response logControllerRebuildUserSummary(userId)

Rebuild rolling summary cho user cụ thể từ logs

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getLogsApi();
final String userId = userId_example; // String | 

try {
    final response = api.logControllerRebuildUserSummary(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LogsApi->logControllerRebuildUserSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**SurveyControllerCreateSurveyQues200Response**](SurveyControllerCreateSurveyQues200Response.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

