# perfumegpt_api_client.api.CartItemsApi

## Load the API package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

All URIs are relative to *https://localhost:7011*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCartItemsAddToCartPost**](CartItemsApi.md#apicartitemsaddtocartpost) | **POST** /api/cart/items/add-to-cart | 
[**apiCartItemsIdRemoveFromCartDelete**](CartItemsApi.md#apicartitemsidremovefromcartdelete) | **DELETE** /api/cart/items/{id}/remove-from-cart | 
[**apiCartItemsIdUpdateCartItemPut**](CartItemsApi.md#apicartitemsidupdatecartitemput) | **PUT** /api/cart/items/{id}/update-cart-item | 


# **apiCartItemsAddToCartPost**
> BaseResponseOfstring apiCartItemsAddToCartPost(createCartItemRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCartItemsApi();
final CreateCartItemRequest createCartItemRequest = ; // CreateCartItemRequest | 

try {
    final response = api.apiCartItemsAddToCartPost(createCartItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartItemsApi->apiCartItemsAddToCartPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCartItemRequest** | [**CreateCartItemRequest**](CreateCartItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCartItemsIdRemoveFromCartDelete**
> BaseResponseOfstring apiCartItemsIdRemoveFromCartDelete(id)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCartItemsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCartItemsIdRemoveFromCartDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartItemsApi->apiCartItemsIdRemoveFromCartDelete: $e\n');
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

# **apiCartItemsIdUpdateCartItemPut**
> BaseResponseOfstring apiCartItemsIdUpdateCartItemPut(id, updateCartItemRequest)



### Example
```dart
import 'package:perfumegpt_api_client/api.dart';

final api = PerfumegptApiClient().getCartItemsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCartItemRequest updateCartItemRequest = ; // UpdateCartItemRequest | 

try {
    final response = api.apiCartItemsIdUpdateCartItemPut(id, updateCartItemRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CartItemsApi->apiCartItemsIdUpdateCartItemPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCartItemRequest** | [**UpdateCartItemRequest**](UpdateCartItemRequest.md)|  | 

### Return type

[**BaseResponseOfstring**](BaseResponseOfstring.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

