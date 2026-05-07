import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for BannersApi
void main() {
  final instance = PerfumegptApiClient().getBannersApi();

  group(BannersApi, () {
    //Future<BaseResponseOfstring> apiBannersBannerIdDelete(String bannerId) async
    test('test apiBannersBannerIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfBannerResponse> apiBannersBannerIdGet(String bannerId) async
    test('test apiBannersBannerIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiBannersBannerIdPut(String bannerId, UpdateBannerRequest updateBannerRequest) async
    test('test apiBannersBannerIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfBannerResponse> apiBannersGet({ String searchTerm, BannerPosition position, bool isActive, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiBannersGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfBannerResponse> apiBannersHomeGet({ BannerPosition position }) async
    test('test apiBannersHomeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> apiBannersImagesTemporaryPost({ List<MultipartFile> images }) async
    test('test apiBannersImagesTemporaryPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiBannersPost(CreateBannerRequest createBannerRequest) async
    test('test apiBannersPost', () async {
      // TODO
    });
  });
}
