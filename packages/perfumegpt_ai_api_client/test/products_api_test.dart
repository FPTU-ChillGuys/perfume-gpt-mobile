import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for ProductsApi
void main() {
  final instance = PerfumegptAiApiClient().getProductsApi();

  group(ProductsApi, () {
    // Lấy danh sách tất cả sản phẩm
    //
    //Future<ProductControllerGetAllProducts200Response> productControllerGetAllProducts(num pageNumber, num pageSize, String sortOrder, bool isDescending) async
    test('test productControllerGetAllProducts', () async {
      // TODO
    });

    // Hybrid Search v4 - Kết hợp Query Layer (hard filters) và Vector Layer (similarity)
    //
    //Future<ProductControllerGetProductsByHybridSearch200Response> productControllerGetProductsByHybridSearch(num pageNumber, num pageSize, String sortOrder, bool isDescending, String searchText) async
    test('test productControllerGetProductsByHybridSearch', () async {
      // TODO
    });

    // Tìm kiếm sản phẩm bằng semantic search
    //
    //Future<ProductControllerGetProductsBySemanticSearch200Response> productControllerGetProductsBySemanticSearch(num pageNumber, num pageSize, String sortOrder, bool isDescending, String searchText) async
    test('test productControllerGetProductsBySemanticSearch', () async {
      // TODO
    });

    // Ghi log khi người dùng xem / click vào product hoặc variant
    //
    //Future productControllerLogProductView(ProductViewLogRequest productViewLogRequest) async
    test('test productControllerLogProductView', () async {
      // TODO
    });

    // Ghi log từ khóa tìm kiếm (không thực hiện tìm kiếm)
    //
    //Future productControllerLogSearchText(SearchTextLogRequest searchTextLogRequest) async
    test('test productControllerLogSearchText', () async {
      // TODO
    });

  });
}
