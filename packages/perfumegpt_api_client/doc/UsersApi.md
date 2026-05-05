# perfumegpt_api_client.api.UsersApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://backend-sep490.vqnofficial.win*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUsersAvatarDelete**](UsersApi.md#apiusersavatardelete) | **DELETE** /api/users/avatar | 
[**apiUsersAvatarGet**](UsersApi.md#apiusersavatarget) | **GET** /api/users/avatar | 
[**apiUsersAvatarPost**](UsersApi.md#apiusersavatarpost) | **POST** /api/users/avatar | 
[**apiUsersForPosGet**](UsersApi.md#apiusersforposget) | **GET** /api/users/for-pos | 
[**apiUsersIdGet**](UsersApi.md#apiusersidget) | **GET** /api/users/{id} | 
[**apiUsersMeGet**](UsersApi.md#apiusersmeget) | **GET** /api/users/me | 
[**apiUsersMePut**](UsersApi.md#apiusersmeput) | **PUT** /api/users/me | 
[**apiUsersStaffLookupGet**](UsersApi.md#apiusersstafflookupget) | **GET** /api/users/staff-lookup | 
[**apiUsersStaffManageGet**](UsersApi.md#apiusersstaffmanageget) | **GET** /api/users/staff-manage | 
[**apiUsersUserLookupGet**](UsersApi.md#apiusersuserlookupget) | **GET** /api/users/user-lookup | 
[**apiUsersUserManageGet**](UsersApi.md#apiusersusermanageget) | **GET** /api/users/user-manage | 
[**apiUsersUserUserIdInactivePut**](UsersApi.md#apiusersuseruseridinactiveput) | **PUT** /api/users/user/{userId}/inactive | 


# **apiUsersAvatarDelete**
> BaseResponseOfstring apiUsersAvatarDelete()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();

try {
    final response = api.apiUsersAvatarDelete();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersAvatarDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersAvatarGet**
> BaseResponseOfMediaResponse apiUsersAvatarGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();

try {
    final response = api.apiUsersAvatarGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersAvatarGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfMediaResponse**](BaseResponseOfMediaResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersAvatarPost**
> BaseResponseOfstring apiUsersAvatarPost(avatar, altText)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();
final MultipartFile avatar = BINARY_DATA_HERE; // MultipartFile | 
final String altText = altText_example; // String | 

try {
    final response = api.apiUsersAvatarPost(avatar, altText);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersAvatarPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **avatar** | **MultipartFile**|  | [optional] 
 **altText** | **String**|  | [optional] 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersForPosGet**
> BaseResponseOfCustomerForPosResponse apiUsersForPosGet(phoneOrEmail)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();
final String phoneOrEmail = phoneOrEmail_example; // String | 

try {
    final response = api.apiUsersForPosGet(phoneOrEmail);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersForPosGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneOrEmail** | **String**|  | [optional] 

### Return type

[**BaseResponseOfCustomerForPosResponse**](BaseResponseOfCustomerForPosResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersIdGet**
> BaseResponseOfstring apiUsersIdGet(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiUsersIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersMeGet**
> BaseResponseOfUserCredentialsResponse apiUsersMeGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();

try {
    final response = api.apiUsersMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfUserCredentialsResponse**](BaseResponseOfUserCredentialsResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersMePut**
> BaseResponseOfstring apiUsersMePut(updateUserBasicInfoRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();
final UpdateUserBasicInfoRequest updateUserBasicInfoRequest = ; // UpdateUserBasicInfoRequest | 

try {
    final response = api.apiUsersMePut(updateUserBasicInfoRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersMePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserBasicInfoRequest** | [**UpdateUserBasicInfoRequest**](UpdateUserBasicInfoRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersStaffLookupGet**
> BaseResponseOfListOfStaffLookupItem apiUsersStaffLookupGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();

try {
    final response = api.apiUsersStaffLookupGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersStaffLookupGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfStaffLookupItem**](BaseResponseOfListOfStaffLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersStaffManageGet**
> BaseResponseOfListOfStaffManageItem apiUsersStaffManageGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();

try {
    final response = api.apiUsersStaffManageGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersStaffManageGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfStaffManageItem**](BaseResponseOfListOfStaffManageItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersUserLookupGet**
> BaseResponseOfListOfUserLookupItem apiUsersUserLookupGet(fullName, email, phoneNumber)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();
final String fullName = fullName_example; // String | 
final String email = email_example; // String | 
final String phoneNumber = phoneNumber_example; // String | 

try {
    final response = api.apiUsersUserLookupGet(fullName, email, phoneNumber);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersUserLookupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fullName** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **phoneNumber** | **String**|  | [optional] 

### Return type

[**BaseResponseOfListOfUserLookupItem**](BaseResponseOfListOfUserLookupItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersUserManageGet**
> BaseResponseOfListOfUserManageItem apiUsersUserManageGet()



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();

try {
    final response = api.apiUsersUserManageGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersUserManageGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponseOfListOfUserManageItem**](BaseResponseOfListOfUserManageItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersUserUserIdInactivePut**
> BaseResponseOfstring apiUsersUserUserIdInactivePut(userId)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getUsersApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiUsersUserUserIdInactivePut(userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersUserUserIdInactivePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

