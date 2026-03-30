# perfumegpt_api_client.api.AuthsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAuthsAdminRegisterPost**](AuthsApi.md#apiauthsadminregisterpost) | **POST** /api/auths/admin/register | 
[**apiAuthsApiTokenPost**](AuthsApi.md#apiauthsapitokenpost) | **POST** /api/auths/api-token | 
[**apiAuthsForgotPasswordPost**](AuthsApi.md#apiauthsforgotpasswordpost) | **POST** /api/auths/forgot-password | 
[**apiAuthsGoogleLoginPost**](AuthsApi.md#apiauthsgoogleloginpost) | **POST** /api/auths/google-login | 
[**apiAuthsLoginPost**](AuthsApi.md#apiauthsloginpost) | **POST** /api/auths/login | 
[**apiAuthsRegisterPost**](AuthsApi.md#apiauthsregisterpost) | **POST** /api/auths/register | 
[**apiAuthsResetPasswordPost**](AuthsApi.md#apiauthsresetpasswordpost) | **POST** /api/auths/reset-password | 
[**apiAuthsVerifyEmailGet**](AuthsApi.md#apiauthsverifyemailget) | **GET** /api/auths/verify-email | 


# **apiAuthsAdminRegisterPost**
> BaseResponseOfstring apiAuthsAdminRegisterPost(registerRequest, role)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final RegisterRequest registerRequest = ; // RegisterRequest | 
final UserRole role = ; // UserRole | 

try {
    final response = api.apiAuthsAdminRegisterPost(registerRequest, role);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsAdminRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md)|  | 
 **role** | [**UserRole**](.md)|  | [optional] 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsApiTokenPost**
> BaseResponseOfTokenResponse apiAuthsApiTokenPost()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();

try {
    final response = api.apiAuthsApiTokenPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsApiTokenPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfTokenResponse**](BaseResponseOfTokenResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsForgotPasswordPost**
> BaseResponseOfstring apiAuthsForgotPasswordPost(forgotPasswordRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final ForgotPasswordRequest forgotPasswordRequest = ; // ForgotPasswordRequest | 

try {
    final response = api.apiAuthsForgotPasswordPost(forgotPasswordRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsForgotPasswordPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsGoogleLoginPost**
> BaseResponseOfTokenResponse apiAuthsGoogleLoginPost(googleLoginRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final GoogleLoginRequest googleLoginRequest = ; // GoogleLoginRequest | 

try {
    final response = api.apiAuthsGoogleLoginPost(googleLoginRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsGoogleLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **googleLoginRequest** | [**GoogleLoginRequest**](GoogleLoginRequest.md)|  | 

### Return type

[**BaseResponseOfTokenResponse**](BaseResponseOfTokenResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsLoginPost**
> BaseResponseOfTokenResponse apiAuthsLoginPost(loginRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final LoginRequest loginRequest = ; // LoginRequest | 

try {
    final response = api.apiAuthsLoginPost(loginRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**BaseResponseOfTokenResponse**](BaseResponseOfTokenResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsRegisterPost**
> BaseResponseOfstring apiAuthsRegisterPost(registerRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final RegisterRequest registerRequest = ; // RegisterRequest | 

try {
    final response = api.apiAuthsRegisterPost(registerRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsResetPasswordPost**
> BaseResponseOfstring apiAuthsResetPasswordPost(resetPasswordRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final ResetPasswordRequest resetPasswordRequest = ; // ResetPasswordRequest | 

try {
    final response = api.apiAuthsResetPasswordPost(resetPasswordRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsResetPasswordPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthsVerifyEmailGet**
> BaseResponseOfstring apiAuthsVerifyEmailGet(email, token)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getAuthsApi();
final String email = email_example; // String | 
final String token = token_example; // String | 

try {
    final response = api.apiAuthsVerifyEmailGet(email, token);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthsApi->apiAuthsVerifyEmailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | [optional] 
 **token** | **String**|  | [optional] 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

