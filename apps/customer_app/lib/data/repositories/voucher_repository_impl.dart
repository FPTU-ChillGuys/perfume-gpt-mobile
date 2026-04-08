import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/voucher.dart';
import '../../domain/repositories/voucher_repository.dart';

class VoucherRepositoryImpl implements VoucherRepository {
  final VouchersApi _api;
  VoucherRepositoryImpl(this._api);

  @override
  Future<List<Voucher>> getAvailable() async {
    final response = await _api.apiVouchersAvailableGet();
    final list = response.data?.payload?.items ?? [];
    return list.map(_mapAvailable).toList();
  }

  @override
  Future<List<Voucher>> getMyVouchers() async {
    final response = await _api.apiVouchersMeGet();
    final list = response.data?.payload?.items ?? [];
    return list.map(_mapUserVoucher).toList();
  }

  @override
  Future<void> redeem(String voucherCode) async {
    await _api.apiVouchersRedeemPost(
      redeemVoucherRequest: RedeemVoucherRequest(voucherId: voucherCode),
    );
  }

  Voucher _mapAvailable(AvailableVoucherResponse j) => Voucher(
        id: j.id?.toString() ?? '',
        code: j.code,
        description: null,
        discountType: j.discountType?.name == 'percentage' ? 'Percentage' : 'FixedAmount',
        discountValue: j.discountValue?.toDouble() ?? 0,
        minOrderValue: j.minOrderValue?.toDouble(),
        maxDiscount: null,
        startDate: null,
        endDate: j.expiryDate,
        usageLimit: j.remainingQuantity,
        usedCount: null,
        isActive: true,
      );

  Voucher _mapUserVoucher(UserVoucherResponse j) => Voucher(
        id: j.id?.toString() ?? '',
        code: j.code,
        description: null,
        discountType: j.discountType,
        discountValue: j.discountValue?.toDouble() ?? 0,
        minOrderValue: j.minOrderValue?.toDouble(),
        maxDiscount: null,
        startDate: null,
        endDate: j.expiryDate,
        usageLimit: null,
        usedCount: null,
        isActive: ! (j.isUsed ?? false) && ! (j.isExpired ?? false),
      );
}
