# perfumegpt_ai_api_client.api.ProductsApi

## Load the API package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productControllerGetAllProducts**](ProductsApi.md#productcontrollergetallproducts) | **GET** /products | Lấy danh sách tất cả sản phẩm
[**productControllerGetAllProductsWithVariants**](ProductsApi.md#productcontrollergetallproductswithvariants) | **GET** /products/all/with-variants | [TEST] Lấy danh sách sản phẩm kèm toàn bộ variants
[**productControllerGetBestSellingProducts**](ProductsApi.md#productcontrollergetbestsellingproducts) | **GET** /products/all/best-sellers | [TEST] Lấy danh sách sản phẩm bán chạy
[**productControllerGetNewestProductsWithVariants**](ProductsApi.md#productcontrollergetnewestproductswithvariants) | **GET** /products/all/newest | [TEST] Lấy danh sách sản phẩm mới nhất
[**productControllerGetProductWithVariants**](ProductsApi.md#productcontrollergetproductwithvariants) | **GET** /products/{id}/with-variants | [TEST] Lấy chi tiết sản phẩm kèm toàn bộ variants
[**productControllerGetProductsByAiSearch**](ProductsApi.md#productcontrollergetproductsbyaisearch) | **GET** /products/search/v2 | Tìm kiếm sản phẩm bằng semantic search v2 (AI extraction)
[**productControllerGetProductsByHybridSearch**](ProductsApi.md#productcontrollergetproductsbyhybridsearch) | **GET** /products/search/v4 | Hybrid Search v4 - Kết hợp Query Layer (hard filters) và Vector Layer (similarity)
[**productControllerGetProductsByParsedSearch**](ProductsApi.md#productcontrollergetproductsbyparsedsearch) | **GET** /products/search/v3 | Tìm kiếm sản phẩm bằng parser path (parse -&gt; query)
[**productControllerGetProductsBySemanticSearch**](ProductsApi.md#productcontrollergetproductsbysemanticsearch) | **GET** /products/search | Tìm kiếm sản phẩm bằng semantic search
[**productControllerGetProductsBySemanticSearchWithVariants**](ProductsApi.md#productcontrollergetproductsbysemanticsearchwithvariants) | **GET** /products/search/with-variants | Tìm kiếm sản phẩm bằng semantic search, kết quả kèm toàn bộ variants
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

# **productControllerGetAllProductsWithVariants**
> ProductControllerGetProductsBySemanticSearch200Response productControllerGetAllProductsWithVariants(pageNumber, pageSize, sortOrder, isDescending)

[TEST] Lấy danh sách sản phẩm kèm toàn bộ variants

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần

try {
    final response = api.productControllerGetAllProductsWithVariants(pageNumber, pageSize, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetAllProductsWithVariants: $e\n');
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

[**ProductControllerGetProductsBySemanticSearch200Response**](ProductControllerGetProductsBySemanticSearch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerGetBestSellingProducts**
> ProductControllerGetBestSellingProducts200Response productControllerGetBestSellingProducts(pageNumber, pageSize, sortOrder, isDescending)

[TEST] Lấy danh sách sản phẩm bán chạy

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần

try {
    final response = api.productControllerGetBestSellingProducts(pageNumber, pageSize, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetBestSellingProducts: $e\n');
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

[**ProductControllerGetBestSellingProducts200Response**](ProductControllerGetBestSellingProducts200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerGetNewestProductsWithVariants**
> ProductControllerGetProductsBySemanticSearch200Response productControllerGetNewestProductsWithVariants(pageNumber, pageSize, sortOrder, isDescending)

[TEST] Lấy danh sách sản phẩm mới nhất

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final num pageNumber = 8.14; // num | Số trang
final num pageSize = 8.14; // num | Số bản ghi mỗi trang
final String sortOrder = sortOrder_example; // String | Thứ tự sắp xếp
final bool isDescending = true; // bool | Sắp xếp giảm dần

try {
    final response = api.productControllerGetNewestProductsWithVariants(pageNumber, pageSize, sortOrder, isDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetNewestProductsWithVariants: $e\n');
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

[**ProductControllerGetProductsBySemanticSearch200Response**](ProductControllerGetProductsBySemanticSearch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerGetProductWithVariants**
> ProductControllerGetProductWithVariants200Response productControllerGetProductWithVariants(id)

[TEST] Lấy chi tiết sản phẩm kèm toàn bộ variants

### Example
```dart
import 'package:perfumegpt_ai_api_client/api.dart';

final api = PerfumegptAiApiClient().getProductsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | UUID của sản phẩm

try {
    final response = api.productControllerGetProductWithVariants(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetProductWithVariants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID của sản phẩm | 

### Return type

[**ProductControllerGetProductWithVariants200Response**](ProductControllerGetProductWithVariants200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerGetProductsByAiSearch**
> ProductControllerGetProductsBySemanticSearch200Response productControllerGetProductsByAiSearch(pageNumber, pageSize, sortOrder, isDescending, searchText)

Tìm kiếm sản phẩm bằng semantic search v2 (AI extraction)

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
    final response = api.productControllerGetProductsByAiSearch(pageNumber, pageSize, sortOrder, isDescending, searchText);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetProductsByAiSearch: $e\n');
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

# **productControllerGetProductsByParsedSearch**
> ProductControllerGetProductsBySemanticSearch200Response productControllerGetProductsByParsedSearch(pageNumber, pageSize, sortOrder, isDescending, searchText)

Tìm kiếm sản phẩm bằng parser path (parse -> query)

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
    final response = api.productControllerGetProductsByParsedSearch(pageNumber, pageSize, sortOrder, isDescending, searchText);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetProductsByParsedSearch: $e\n');
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

# **productControllerGetProductsBySemanticSearchWithVariants**
> ProductControllerGetProductsBySemanticSearch200Response productControllerGetProductsBySemanticSearchWithVariants(pageNumber, pageSize, sortOrder, isDescending, searchText)

Tìm kiếm sản phẩm bằng semantic search, kết quả kèm toàn bộ variants

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
    final response = api.productControllerGetProductsBySemanticSearchWithVariants(pageNumber, pageSize, sortOrder, isDescending, searchText);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductsApi->productControllerGetProductsBySemanticSearchWithVariants: $e\n');
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
 - **Accept**: Not defined

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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

