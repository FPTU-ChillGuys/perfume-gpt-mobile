import '../entities/voucher.dart';

abstract class VoucherRepository {
  Future<List<Voucher>> getAvailable();
  Future<List<Voucher>> getMyVouchers();
  Future<List<Voucher>> getRedeemableList();
  Future<void> redeem(String voucherId);
}
