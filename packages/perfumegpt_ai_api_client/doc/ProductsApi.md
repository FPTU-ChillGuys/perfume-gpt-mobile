# perfumegpt_ai_api_client.api.ProductsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productControllerGetAllProducts**](ProductsApi.md#productcontrollergetallproducts) | **GET** /products | Lấy danh sách tất cả sản phẩm
[**productControllerGetProductsByHybridSearch**](ProductsApi.md#productcontrollergetproductsbyhybridsearch) | **GET** /products/search/v4 | Hybrid Search v4 - Kết hợp Query Layer (hard filters) và Vector Layer (similarity)
[**productControllerGetProductsBySemanticSearch**](ProductsApi.md#productcontrollergetproductsbysemanticsearch) | **GET** /products/search | Tìm kiếm sản phẩm bằng semantic search
[**productControllerLogProductView**](ProductsApi.md#productcontrollerlogproductview) | **POST** /products/log/view | Ghi log khi người dùng xem / click vào product hoặc variant
[**productControllerLogSearchText**](ProductsApi.md#productcontrollerlogsearchtext) | **POST** /products/log/search | Ghi log từ khóa tìm kiếm (không thực hiện tìm kiếm)


# **productControllerGetAllProducts**
> ProductControllerGetAllProducts200Response productControllerGetAllProducts(pageNumber, pageSize, sortOrder, isDescending)

Lấy danh sách tất cả sản phẩm

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần

try {
    final response = api.productControllerGetAllProducts(pageNumber, pageSize, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetAllProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]

### Return type

[**ProductControllerGetAllProducts200Response**](ProductControllerGetAllProducts200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerGetProductsByHybridSearch**
> ProductControllerGetProductsByHybridSearch200Response productControllerGetProductsByHybridSearch(pageNumber, pageSize, sortOrder, isDescending, searchText)

Hybrid Search v4 - Kết hợp Query Layer (hard filters) và Vector Layer (similarity)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String searchText = searchText_example; // String | Từ khóa tìm kiếm

try {
    final response = api.productControllerGetProductsByHybridSearch(pageNumber, pageSize, sortOrder, isDescending, searchText);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetProductsByHybridSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **searchText** | **String**| Từ khóa tìm kiếm | [default to '']

### Return type

[**ProductControllerGetProductsByHybridSearch200Response**](ProductControllerGetProductsByHybridSearch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerGetProductsBySemanticSearch**
> ProductControllerGetProductsBySemanticSearch200Response productControllerGetProductsBySemanticSearch(pageNumber, pageSize, sortOrder, isDescending, searchText)

Tìm kiếm sản phẩm bằng semantic search

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần
final String searchText = searchText_example; // String | Từ khóa tìm kiếm

try {
    final response = api.productControllerGetProductsBySemanticSearch(pageNumber, pageSize, sortOrder, isDescending, searchText);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetProductsBySemanticSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **num**| Số trang | [default to 1]
 **pageSize** | **num**| Số bản ghi mỗi trang | [default to 10]
 **sortOrder** | **String**| Thứ tự sắp xếp | [default to 'asc']
 **isDescending** | **bool**| Sắp xếp giảm dần | [default to false]
 **searchText** | **String**| Từ khóa tìm kiếm | [default to '']

### Return type

[**ProductControllerGetProductsBySemanticSearch200Response**](ProductControllerGetProductsBySemanticSearch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerLogProductView**
> productControllerLogProductView(productViewLogRequest)

Ghi log khi người dùng xem / click vào product hoặc variant

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final ProductViewLogRequest productViewLogRequest = ; // ProductViewLogRequest | 

try {
    api.productControllerLogProductView(productViewLogRequest);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerLogProductView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productViewLogRequest** | [**ProductViewLogRequest**](ProductViewLogRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerLogSearchText**
> productControllerLogSearchText(searchTextLogRequest)

Ghi log từ khóa tìm kiếm (không thực hiện tìm kiếm)

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final SearchTextLogRequest searchTextLogRequest = ; // SearchTextLogRequest | 

try {
    api.productControllerLogSearchText(searchTextLogRequest);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerLogSearchText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTextLogRequest** | [**SearchTextLogRequest**](SearchTextLogRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

