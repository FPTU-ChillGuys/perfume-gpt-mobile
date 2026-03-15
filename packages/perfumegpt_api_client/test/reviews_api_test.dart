import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for ReviewsApi
void main() {
  final instance = PerfumegptApiClient().getReviewsApi();

  group(ReviewsApi, () {
    //Future<BaseResponseOfPagedResultOfReviewListItem> apiReviewsGet({ String variantId, String userId, int minRating, int maxRating, bool hasImages, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiReviewsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> apiReviewsImagesTemporaryPost({ List<MultipartFile> images }) async
    test('test apiReviewsImagesTemporaryPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfReviewResponse> apiReviewsMeGet() async
    test('test apiReviewsMeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfGuid> apiReviewsPost(CreateReviewRequest createReviewRequest) async
    test('test apiReviewsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiReviewsReviewIdDelete(String reviewId) async
    test('test apiReviewsReviewIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfReviewDetailResponse> apiReviewsReviewIdGet(String reviewId) async
    test('test apiReviewsReviewIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfMediaResponse> apiReviewsReviewIdImagesGet(String reviewId) async
    test('test apiReviewsReviewIdImagesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfstring> apiReviewsReviewIdPut(String reviewId, UpdateReviewRequest updateReviewRequest) async
    test('test apiReviewsReviewIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfReviewResponse> apiReviewsVariantVariantIdGet(String variantId) async
    test('test apiReviewsVariantVariantIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfReviewStatisticsResponse> apiReviewsVariantVariantIdStatisticsGet(String variantId) async
    test('test apiReviewsVariantVariantIdStatisticsGet', () async {
      // TODO
    });

  });
}
