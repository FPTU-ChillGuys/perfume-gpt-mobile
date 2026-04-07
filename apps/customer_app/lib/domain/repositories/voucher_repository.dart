import '../entities/voucher.dart';

abstract class VoucherRepository {
  Future<List<Voucher>> getAvailable();
  Future<List<Voucher>> getMyVouchers();
  Future<void> redeem(String voucherCode);
}
