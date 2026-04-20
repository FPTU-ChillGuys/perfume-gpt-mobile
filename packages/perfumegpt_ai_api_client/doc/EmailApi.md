# perfumegpt_ai_api_client.api.EmailApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailControllerSendEmail**](EmailApi.md#emailcontrollersendemail) | **POST** /email/send | Gửi email text cơ bản


# **emailControllerSendEmail**
> EmailControllerSendEmail200Response emailControllerSendEmail(sendEmailRequestDto)

Gửi email text cơ bản

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getEmailApi();
final SendEmailRequestDto sendEmailRequestDto = ; // SendEmailRequestDto | 

try {
    final response = api.emailControllerSendEmail(sendEmailRequestDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EmailApi->emailControllerSendEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEmailRequestDto** | [**SendEmailRequestDto**](SendEmailRequestDto.md)|  | 

### Return type

[**EmailControllerSendEmail200Response**](EmailControllerSendEmail200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

