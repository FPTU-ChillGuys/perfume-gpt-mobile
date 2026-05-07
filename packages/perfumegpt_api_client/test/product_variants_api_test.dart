import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for ProductVariantsApi
void main() {
  final instance = PerfumegptApiClient().getProductVariantsApi();

  group(ProductVariantsApi, () {
    //Future<BaseResponseOfPagedResultOfVariantPagedItem> apiProductvariantsCampaignsCampaignIdGet(String campaignId, { int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiProductvariantsCampaignsCampaignIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfProductVariantForPosResponse> apiProductvariantsForPosGet({ String keyword }) async
    test('test apiProductvariantsForPosGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfVariantPagedItem> apiProductvariantsGet({ int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiProductvariantsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiProductvariantsImagesMediaIdSetPrimaryPut(String mediaId) async
    test('test apiProductvariantsImagesMediaIdSetPrimaryPut', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> apiProductvariantsImagesTemporaryPost({ List<VariantImageUploadItem> images }) async
    test('test apiProductvariantsImagesTemporaryPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfVariantLookupItem> apiProductvariantsLookupGet({ String productId, int supplierId }) async
    test('test apiProductvariantsLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfstring> apiProductvariantsPost(CreateVariantRequest createVariantRequest) async
    test('test apiProductvariantsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiProductvariantsVariantIdDelete(String variantId) async
    test('test apiProductvariantsVariantIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfProductVariantResponse> apiProductvariantsVariantIdGet(String variantId) async
    test('test apiProductvariantsVariantIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfMediaResponse> apiProductvariantsVariantIdImagesGet(String variantId) async
    test('test apiProductvariantsVariantIdImagesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfMediaResponse> apiProductvariantsVariantIdImagesPrimaryGet(String variantId) async
    test('test apiProductvariantsVariantIdImagesPrimaryGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfstring> apiProductvariantsVariantIdPut(String variantId, UpdateVariantRequest updateVariantRequest) async
    test('test apiProductvariantsVariantIdPut', () async {
      // TODO
    });
  });
}
