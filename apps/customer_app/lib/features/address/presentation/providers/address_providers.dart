import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/address_repository_impl.dart';
import '../../../../domain/entities/address.dart';
import '../../../../domain/repositories/address_repository.dart';

part 'address_providers.g.dart';

@riverpod
AddressRepository addressRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AddressRepositoryImpl(apiClient.getAddressApi());
}

@riverpod
class AddressList extends _$AddressList {
  @override
  FutureOr<List<Address>> build() {
    return ref.watch(addressRepositoryProvider).getAll();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  Future<void> deleteAddress(String id) async {
    await ref.read(addressRepositoryProvider).delete(id);
    ref.invalidateSelf();
  }

  Future<void> setDefault(String id) async {
    await ref.read(addressRepositoryProvider).setDefault(id);
    ref.invalidateSelf();
  }
}
