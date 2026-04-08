import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_provider.g.dart';

@riverpod
FutureOr<List<AddressResponse>> savedAddresses(Ref ref) async {
  final api = ref.watch(apiClientProvider).getAddressApi();
  final response = await api.apiAddressGet();
  return response.data?.payload ?? [];
}

@riverpod
FutureOr<List<ProvinceResponse>> provinces(Ref ref) async {
  final api = ref.watch(apiClientProvider).getAddressApi();
  final response = await api.apiAddressProvincesGet();
  return response.data?.payload ?? [];
}

@riverpod
FutureOr<List<DistrictResponse>> districts(Ref ref, int provinceId) async {
  final api = ref.watch(apiClientProvider).getAddressApi();
  final response = await api.apiAddressDistrictsGet(provinceId: provinceId);
  return response.data?.payload ?? [];
}

@riverpod
FutureOr<List<WardResponse>> wards(Ref ref, int districtId) async {
  final api = ref.watch(apiClientProvider).getAddressApi();
  final response = await api.apiAddressWardsGet(districtId: districtId);
  return response.data?.payload ?? [];
}
