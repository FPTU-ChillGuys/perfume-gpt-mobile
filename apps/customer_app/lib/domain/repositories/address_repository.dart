import '../entities/address.dart';

abstract class AddressRepository {
  Future<List<Address>> getAll();
  Future<Address> getById(String id);
  Future<Address?> getDefault();
  Future<void> create(Address address);
  Future<void> update(String id, Address address);
  Future<void> delete(String id);
  Future<void> setDefault(String id);
}
