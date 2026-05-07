import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for VouchersApi
void main() {
  final instance = PerfumegptApiClient().getVouchersApi();

  group(VouchersApi, () {
    //Future<BaseResponseOfPagedResultOfUserVoucherResponse> apiUserVouchersMeGet({ UsageStatus status, bool isUsed, bool isExpired, String code, DiscountType discountType, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiUserVouchersMeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfApplicableVoucherResponse> apiVouchersApplicablePost(GetApplicableVouchersRequest getApplicableVouchersRequest) async
    test('test apiVouchersApplicablePost', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfVoucherResponse> apiVouchersGet({ bool isExpired, bool isRegular, String code, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiVouchersGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiVouchersPost(CreateVoucherRequest createVoucherRequest) async
    test('test apiVouchersPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiVouchersRedeemPost(RedeemVoucherRequest redeemVoucherRequest) async
    test('test apiVouchersRedeemPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfRedeemableVoucherResponse> apiVouchersRedeemableGet({ int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiVouchersRedeemableGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfApplicableVoucherResponse> apiVouchersVariantVariantIdApplicableGet(String variantId) async
    test('test apiVouchersVariantVariantIdApplicableGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiVouchersVoucherIdDelete(String voucherId) async
    test('test apiVouchersVoucherIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfVoucherResponse> apiVouchersVoucherIdGet(String voucherId) async
    test('test apiVouchersVoucherIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiVouchersVoucherIdPut(String voucherId, UpdateVoucherRequest updateVoucherRequest) async
    test('test apiVouchersVoucherIdPut', () async {
      // TODO
    });
  });
}
