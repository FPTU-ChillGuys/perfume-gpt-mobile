import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for CampaignsApi
void main() {
  final instance = PerfumegptApiClient().getCampaignsApi();

  group(CampaignsApi, () {
    //Future<BaseResponseOfstring> apiCampaignsCampaignIdDelete(String campaignId) async
    test('test apiCampaignsCampaignIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfCampaignResponse> apiCampaignsCampaignIdGet(String campaignId) async
    test('test apiCampaignsCampaignIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfCampaignPromotionItemResponse> apiCampaignsCampaignIdItemsGet(String campaignId) async
    test('test apiCampaignsCampaignIdItemsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfCampaignPromotionItemResponse> apiCampaignsCampaignIdItemsItemIdGet(String campaignId, String itemId) async
    test('test apiCampaignsCampaignIdItemsItemIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsCampaignIdPut(String campaignId, UpdateCampaignRequest updateCampaignRequest) async
    test('test apiCampaignsCampaignIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsCampaignIdStatusPut(String campaignId, UpdateCampaignStatusRequest updateCampaignStatusRequest) async
    test('test apiCampaignsCampaignIdStatusPut', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfCampaignResponse> apiCampaignsGet({ String searchTerm, CampaignStatus status, CampaignType type, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiCampaignsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfCampaignResponse> apiCampaignsHomeGet() async
    test('test apiCampaignsHomeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsIdItemsItemIdDelete(String id, String itemId) async
    test('test apiCampaignsIdItemsItemIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsIdItemsItemIdPut(String id, String itemId, UpdateCampaignPromotionItemRequest updateCampaignPromotionItemRequest) async
    test('test apiCampaignsIdItemsItemIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsIdItemsPost(String id, CreateCampaignPromotionItemRequest createCampaignPromotionItemRequest) async
    test('test apiCampaignsIdItemsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfVoucherResponse> apiCampaignsIdVouchersGet(String id) async
    test('test apiCampaignsIdVouchersGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsIdVouchersPost(String id, CreateCampaignVoucherRequest createCampaignVoucherRequest) async
    test('test apiCampaignsIdVouchersPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsIdVouchersVoucherIdDelete(String id, String voucherId) async
    test('test apiCampaignsIdVouchersVoucherIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfVoucherResponse> apiCampaignsIdVouchersVoucherIdGet(String id, String voucherId) async
    test('test apiCampaignsIdVouchersVoucherIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsIdVouchersVoucherIdPut(String id, String voucherId, UpdateCampaignVoucherRequest updateCampaignVoucherRequest) async
    test('test apiCampaignsIdVouchersVoucherIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfCampaignLookupItem> apiCampaignsLookupActiveGet() async
    test('test apiCampaignsLookupActiveGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCampaignsPost(CreateCampaignRequest createCampaignRequest) async
    test('test apiCampaignsPost', () async {
      // TODO
    });
  });
}
