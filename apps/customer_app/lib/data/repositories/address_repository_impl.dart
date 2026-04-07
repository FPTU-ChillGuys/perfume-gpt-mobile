import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/address.dart';
import '../../domain/repositories/address_repository.dart';

class AddressRepositoryImpl implements AddressRepository {
  final AddressApi _api;
  AddressRepositoryImpl(this._api);

  @override
  Future<List<Address>> getAll() async {
    final response = await _api.apiAddressGet();
    final list = response.data?.payload ?? [];
    return list.map(_map).toList();
  }

  @override
  Future<Address> getById(String id) async {
    final response = await _api.apiAddressIdGet(id: id);
    return _map(response.data!.payload!);
  }

  @override
  Future<Address?> getDefault() async {
    try {
      final response = await _api.apiAddressDefaultGet();
      final payload = response.data?.payload;
      if (payload == null) return null;
      return _map(payload);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return null;
      rethrow;
    }
  }

  @override
  Future<void> create(Address address) async {
    await _api.apiAddressPost(
      createAddressRequest: CreateAddressRequest(
        recipientName: address.recipientName,
        recipientPhoneNumber: address.recipientPhoneNumber,
        street: address.street,
        ward: address.ward,
        district: address.district,
        city: address.city,
        wardCode: address.wardCode,
        districtId: address.districtId,
        provinceId: address.provinceId,
        isDefault: address.isDefault,
      ),
    );
  }

  @override
  Future<void> update(String id, Address address) async {
    await _api.apiAddressIdPut(
      id: id,
      updateAddressRequest: UpdateAddressRequest(
        recipientName: address.recipientName,
        recipientPhoneNumber: address.recipientPhoneNumber,
        street: address.street,
        ward: address.ward,
        district: address.district,
        city: address.city,
        wardCode: address.wardCode,
        districtId: address.districtId,
        provinceId: address.provinceId,
      ),
    );
  }

  @override
  Future<void> delete(String id) async {
    await _api.apiAddressIdDelete(id: id);
  }

  @override
  Future<void> setDefault(String id) async {
    await _api.apiAddressIdSetDefaultPut(id: id);
  }

  Address _map(AddressResponse j) => Address(
        id: j.id ?? '',
        recipientName: j.recipientName,
        recipientPhoneNumber: j.recipientPhoneNumber,
        street: j.street,
        ward: j.ward,
        district: j.district,
        city: j.city,
        wardCode: j.wardCode,
        districtId: j.districtId ?? 0,
        provinceId: j.provinceId ?? 0,
        isDefault: j.isDefault ?? false,
      );
}
