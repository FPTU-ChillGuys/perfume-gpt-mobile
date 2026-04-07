import 'package:dio/dio.dart';
import '../../domain/entities/address.dart';
import '../../domain/repositories/address_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class AddressRepositoryImpl implements AddressRepository {
  final Dio _dio;
  AddressRepositoryImpl(this._dio);

  Options get _opts => Options(extra: _authExtra);
  Options get _jsonOpts => Options(contentType: 'application/json', extra: _authExtra);

  @override
  Future<List<Address>> getAll() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/address', options: _opts);
    final list = (r.data?['payload'] as List?)?.cast<Map<String, dynamic>>() ?? [];
    return list.map(_map).toList();
  }

  @override
  Future<Address> getById(String id) async {
    final r = await _dio.get<Map<String, dynamic>>('/api/address/$id', options: _opts);
    return _map(r.data!['payload'] as Map<String, dynamic>);
  }

  @override
  Future<Address?> getDefault() async {
    try {
      final r = await _dio.get<Map<String, dynamic>>('/api/address/default', options: _opts);
      final payload = r.data?['payload'];
      if (payload == null) return null;
      return _map(payload as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return null;
      rethrow;
    }
  }

  @override
  Future<void> create(Address address) async {
    await _dio.post('/api/address', options: _jsonOpts, data: _toJson(address));
  }

  @override
  Future<void> update(String id, Address address) async {
    await _dio.put('/api/address/$id', options: _jsonOpts, data: _toJson(address));
  }

  @override
  Future<void> delete(String id) async {
    await _dio.delete('/api/address/$id', options: _opts);
  }

  @override
  Future<void> setDefault(String id) async {
    await _dio.put('/api/address/$id/set-default', options: _opts);
  }

  Address _map(Map<String, dynamic> j) => Address(
        id: j['id'] as String? ?? '',
        recipientName: j['recipientName'] as String? ?? '',
        recipientPhoneNumber: j['recipientPhoneNumber'] as String? ?? '',
        street: j['street'] as String? ?? '',
        ward: j['ward'] as String? ?? '',
        district: j['district'] as String? ?? '',
        city: j['city'] as String? ?? '',
        wardCode: j['wardCode'] as String? ?? '',
        districtId: j['districtId'] as int? ?? 0,
        provinceId: j['provinceId'] as int? ?? 0,
        isDefault: j['isDefault'] as bool? ?? false,
      );

  Map<String, dynamic> _toJson(Address a) => {
        'recipientName': a.recipientName,
        'recipientPhoneNumber': a.recipientPhoneNumber,
        'street': a.street,
        'ward': a.ward,
        'district': a.district,
        'city': a.city,
        'wardCode': a.wardCode,
        'districtId': a.districtId,
        'provinceId': a.provinceId,
        'isDefault': a.isDefault,
      };
}
