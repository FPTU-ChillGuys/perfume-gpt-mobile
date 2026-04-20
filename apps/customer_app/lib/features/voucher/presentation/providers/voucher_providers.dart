import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/voucher_repository_impl.dart';
import '../../../../domain/entities/voucher.dart';
import '../../../../domain/repositories/voucher_repository.dart';

part 'voucher_providers.g.dart';

@riverpod
VoucherRepository voucherRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return VoucherRepositoryImpl(apiClient.getVouchersApi());
}

@riverpod
FutureOr<List<Voucher>> myVouchers(Ref ref) {
  return ref.watch(voucherRepositoryProvider).getMyVouchers();
}

@riverpod
FutureOr<List<Voucher>> redeemableVouchers(Ref ref) {
  return ref.watch(voucherRepositoryProvider).getRedeemableList();
}
