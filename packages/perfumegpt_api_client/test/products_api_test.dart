import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for ProductsApi
void main() {
  final instance = PerfumegptApiClient().getProductsApi();

  group(ProductsApi, () {
    //Future<BaseResponseOfPagedResultOfProductListItem> apiProductsBestSellersGet({ int genderValueId, bool isAvailable, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiProductsBestSellersGet', () async {
      // TODO
    });

    //Future<BaseResponse> apiProductsEmbeddingsUpdateAllsPost() async
    test('test apiProductsEmbeddingsUpdateAllsPost', () async {
      // TODO
    });

    //Future<BaseResponse> apiProductsEmbeddingsUpdateProductIdPost(String productId) async
    test('test apiProductsEmbeddingsUpdateProductIdPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfProductListItem> apiProductsGet({ int genderValueId, bool isAvailable, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiProductsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiProductsImagesMediaIdSetPrimaryPut(String mediaId) async
    test('test apiProductsImagesMediaIdSetPrimaryPut', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> apiProductsImagesTemporaryPost({ List<ProductImageUploadItem> images }) async
    test('test apiProductsImagesTemporaryPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfProductLookupItem> apiProductsLookupGet() async
    test('test apiProductsLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfProductListItem> apiProductsNewArrivalsGet({ int genderValueId, bool isAvailable, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiProductsNewArrivalsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfstring> apiProductsPost(CreateProductRequest createProductRequest) async
    test('test apiProductsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiProductsProductIdDelete(String productId) async
    test('test apiProductsProductIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfProductFastLookResponse> apiProductsProductIdFastLookGet(String productId) async
    test('test apiProductsProductIdFastLookGet', () async {
      // TODO
    });

    //Future<BaseResponseOfProductResponse> apiProductsProductIdGet(String productId) async
    test('test apiProductsProductIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfMediaResponse> apiProductsProductIdImagesGet(String productId) async
    test('test apiProductsProductIdImagesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfMediaResponse> apiProductsProductIdImagesPrimaryGet(String productId) async
    test('test apiProductsProductIdImagesPrimaryGet', () async {
      // TODO
    });

    //Future<BaseResponseOfProductInforResponse> apiProductsProductIdInformationGet(String productId) async
    test('test apiProductsProductIdInformationGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfstring> apiProductsProductIdPut(String productId, UpdateProductRequest updateProductRequest) async
    test('test apiProductsProductIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfProductListItemWithVariants> apiProductsSearchSemanticGet({ String searchText, int genderValueId, bool isAvailable, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiProductsSearchSemanticGet', () async {
      // TODO
    });

  });
}
