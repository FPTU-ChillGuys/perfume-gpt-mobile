# perfumegpt_ai_api_client.api.CartApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cartControllerAddToCart**](CartApi.md#cartcontrolleraddtocart) | **POST** /cart | Add item to cart
[**cartControllerClearCart**](CartApi.md#cartcontrollerclearcart) | **DELETE** /cart | Clear current user cart
[**cartControllerGetCart**](CartApi.md#cartcontrollergetcart) | **GET** /cart | Get current user cart
[**cartControllerRemoveFromCart**](CartApi.md#cartcontrollerremovefromcart) | **DELETE** /cart/{id} | Remove item from cart
[**cartControllerUpdateCartItem**](CartApi.md#cartcontrollerupdatecartitem) | **PATCH** /cart/{id} | Update cart item quantity


# **cartControllerAddToCart**
> cartControllerAddToCart(addToCartRequest)

Add item to cart

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final AddToCartRequest addToCartRequest = ; // AddToCartRequest | 

try {
    api.cartControllerAddToCart(addToCartRequest);
} on DioException catch (e) {
    print('Exception when calling CartApi->cartControllerAddToCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addToCartRequest** | [**AddToCartRequest**](AddToCartRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartControllerClearCart**
> cartControllerClearCart()

Clear current user cart

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();

try {
    api.cartControllerClearCart();
} on DioException catch (e) {
    print('Exception when calling CartApi->cartControllerClearCart: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartControllerGetCart**
> cartControllerGetCart()

Get current user cart

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();

try {
    api.cartControllerGetCart();
} on DioException catch (e) {
    print('Exception when calling CartApi->cartControllerGetCart: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartControllerRemoveFromCart**
> cartControllerRemoveFromCart(id)

Remove item from cart

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final String id = id_example; // String | 

try {
    api.cartControllerRemoveFromCart(id);
} on DioException catch (e) {
    print('Exception when calling CartApi->cartControllerRemoveFromCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartControllerUpdateCartItem**
> cartControllerUpdateCartItem(id, updateCartItemRequest)

Update cart item quantity

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getCartApi();
final String id = id_example; // String | 
final UpdateCartItemRequest updateCartItemRequest = ; // UpdateCartItemRequest | 

try {
    api.cartControllerUpdateCartItem(id, updateCartItemRequest);
} on DioException catch (e) {
    print('Exception when calling CartApi->cartControllerUpdateCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCartItemRequest** | [**UpdateCartItemRequest**](UpdateCartItemRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

