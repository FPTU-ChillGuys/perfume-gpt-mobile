import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for PagesApi
void main() {
  final instance = PerfumegptApiClient().getPagesApi();

  group(PagesApi, () {
    //Future<BaseResponseOfPagedResultOfPageResponse> apiPagesGet({ String searchTerm, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiPagesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> apiPagesImagesTemporaryPost({ List<MultipartFile> images }) async
    test('test apiPagesImagesTemporaryPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPageResponse> apiPagesPost(CreatePageRequest createPageRequest) async
    test('test apiPagesPost', () async {
      // TODO
    });

    //Future<BaseResponse> apiPagesSlugDelete(String slug) async
    test('test apiPagesSlugDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfPageResponse> apiPagesSlugGet(String slug) async
    test('test apiPagesSlugGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPageResponse> apiPagesSlugPublishPost(String slug) async
    test('test apiPagesSlugPublishPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPageResponse> apiPagesSlugPut(String slug, UpdatePageRequest updatePageRequest) async
    test('test apiPagesSlugPut', () async {
      // TODO
    });

  });
}
