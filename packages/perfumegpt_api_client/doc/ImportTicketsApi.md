# perfumegpt_api_client.api.ImportTicketsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiImportticketsExcelParserPost**](ImportTicketsApi.md#apiimportticketsexcelparserpost) | **POST** /api/importtickets/excel-parser | 
[**apiImportticketsExcelTemplateGet**](ImportTicketsApi.md#apiimportticketsexceltemplateget) | **GET** /api/importtickets/excel-template | 
[**apiImportticketsGet**](ImportTicketsApi.md#apiimportticketsget) | **GET** /api/importtickets | 
[**apiImportticketsIdDelete**](ImportTicketsApi.md#apiimportticketsiddelete) | **DELETE** /api/importtickets/{id} | 
[**apiImportticketsIdGet**](ImportTicketsApi.md#apiimportticketsidget) | **GET** /api/importtickets/{id} | 
[**apiImportticketsIdPut**](ImportTicketsApi.md#apiimportticketsidput) | **PUT** /api/importtickets/{id} | 
[**apiImportticketsIdStatusPut**](ImportTicketsApi.md#apiimportticketsidstatusput) | **PUT** /api/importtickets/{id}/status | 
[**apiImportticketsPost**](ImportTicketsApi.md#apiimportticketspost) | **POST** /api/importtickets | 
[**apiImportticketsTicketIdVerifyPost**](ImportTicketsApi.md#apiimportticketsticketidverifypost) | **POST** /api/importtickets/{ticketId}/verify | 


# **apiImportticketsExcelParserPost**
> BaseResponseOfCreateImportTicketRequest apiImportticketsExcelParserPost(excelFile, supplierId, expectedArrivalDate)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final MultipartFile excelFile = BINARY_DATA_HERE; // MultipartFile | 
final int supplierId = 56; // int | 
final DateTime expectedArrivalDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.apiImportticketsExcelParserPost(excelFile, supplierId, expectedArrivalDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsExcelParserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excelFile** | **MultipartFile**|  | [optional] 
 **supplierId** | **int**|  | [optional] 
 **expectedArrivalDate** | **DateTime**|  | [optional] 

### Return type

[**BaseResponseOfCreateImportTicketRequest**](BaseResponseOfCreateImportTicketRequest.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsExcelTemplateGet**
> FileContentResult apiImportticketsExcelTemplateGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();

try {
    final response = api.apiImportticketsExcelTemplateGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsExcelTemplateGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FileContentResult**](FileContentResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsGet**
> BaseResponseOfPagedResultOfImportTicketListItem apiImportticketsGet(supplierId, status, fromDate, toDate, verifiedById, pageNumber, pageSize, sortBy, sortOrder, isDescending)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final int supplierId = 56; // int | 
final ImportStatus status = ; // ImportStatus | 
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String verifiedById = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final bool isDescending = true; // bool | 

try {
    final response = api.apiImportticketsGet(supplierId, status, fromDate, toDate, verifiedById, pageNumber, pageSize, sortBy, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | [optional] 
 **status** | [**ImportStatus**](.md)|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 
 **toDate** | **DateTime**|  | [optional] 
 **verifiedById** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **isDescending** | **bool**|  | [optional] 

### Return type

[**BaseResponseOfPagedResultOfImportTicketListItem**](BaseResponseOfPagedResultOfImportTicketListItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsIdDelete**
> BaseResponseOfboolean apiImportticketsIdDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiImportticketsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfboolean**](BaseResponseOfboolean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsIdGet**
> BaseResponseOfImportTicketResponse apiImportticketsIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiImportticketsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfImportTicketResponse**](BaseResponseOfImportTicketResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsIdPut**
> BaseResponseOfstring apiImportticketsIdPut(id, updateImportRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateImportRequest updateImportRequest = ; // UpdateImportRequest | 

try {
    final response = api.apiImportticketsIdPut(id, updateImportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateImportRequest** | [**UpdateImportRequest**](UpdateImportRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsIdStatusPut**
> BaseResponseOfstring apiImportticketsIdStatusPut(id, updateImportStatusRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateImportStatusRequest updateImportStatusRequest = ; // UpdateImportStatusRequest | 

try {
    final response = api.apiImportticketsIdStatusPut(id, updateImportStatusRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsIdStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateImportStatusRequest** | [**UpdateImportStatusRequest**](UpdateImportStatusRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsPost**
> BaseResponseOfstring apiImportticketsPost(createImportTicketRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final CreateImportTicketRequest createImportTicketRequest = ; // CreateImportTicketRequest | 

try {
    final response = api.apiImportticketsPost(createImportTicketRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createImportTicketRequest** | [**CreateImportTicketRequest**](CreateImportTicketRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiImportticketsTicketIdVerifyPost**
> BaseResponseOfstring apiImportticketsTicketIdVerifyPost(ticketId, verifyImportTicketRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getImportTicketsApi();
final String ticketId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final VerifyImportTicketRequest verifyImportTicketRequest = ; // VerifyImportTicketRequest | 

try {
    final response = api.apiImportticketsTicketIdVerifyPost(ticketId, verifyImportTicketRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImportTicketsApi->apiImportticketsTicketIdVerifyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**|  | 
 **verifyImportTicketRequest** | [**VerifyImportTicketRequest**](VerifyImportTicketRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

