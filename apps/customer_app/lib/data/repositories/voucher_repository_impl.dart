import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/voucher.dart';
import '../../domain/repositories/voucher_repository.dart';

class VoucherRepositoryImpl implements VoucherRepository {
  final VouchersApi _api;
  VoucherRepositoryImpl(this._api);

  static bool _isOk(DioException e) {
    final s = e.response?.statusCode;
    return s != null && s >= 200 && s < 300;
  }

  @override
  Future<List<Voucher>> getAvailable() async {
    try {
      final response = await _api.apiVouchersAvailableGet();
      final list = response.data?.payload?.items ?? [];
      return list.map(_mapAvailable).toList();
    } on DioException catch (e) {
      if (_isOk(e)) return _parseAvailableRaw(e.response?.data);
      rethrow;
    }
  }

  @override
  Future<List<Voucher>> getMyVouchers() async {
    try {
      final response = await _api.apiVouchersMeGet();
      final list = response.data?.payload?.items ?? [];
      return list.map(_mapUserVoucher).toList();
    } on DioException catch (e) {
      if (_isOk(e)) return _parseMyVouchersRaw(e.response?.data);
      rethrow;
    }
  }

  @override
  Future<List<Voucher>> getRedeemableList() async {
    try {
      final response = await _api.apiVouchersRedeemableListGet();
      final list = response.data?.payload ?? [];
      return list.map(_mapRedeemable).toList();
    } on DioException catch (e) {
      if (_isOk(e)) return _parseRedeemableRaw(e.response?.data);
      rethrow;
    }
  }

  @override
  Future<void> redeem(String voucherId) async {
    try {
      await _api.apiVouchersRedeemPost(
        redeemVoucherRequest: RedeemVoucherRequest(voucherId: voucherId),
      );
    } on DioException catch (e) {
      if (_isOk(e)) return; // success despite deserialization failure
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Không thể đổi voucher');
    }
  }

  // ── Raw response parsers (DioException fallback) ──────────────────────────

  List<Voucher> _parseAvailableRaw(dynamic data) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final payload = raw['payload'];
    List items = [];
    if (payload is List) {
      items = payload;
    } else if (payload is Map) {
      items = (payload['items'] as List?) ?? [];
    }
    return items
        .whereType<Map<String, dynamic>>()
        .map(_mapRawAvailable)
        .toList();
  }

  List<Voucher> _parseMyVouchersRaw(dynamic data) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final payload = raw['payload'];
    List items = [];
    if (payload is List) {
      items = payload;
    } else if (payload is Map) {
      items = (payload['items'] as List?) ?? [];
    }
    return items
        .whereType<Map<String, dynamic>>()
        .map(_mapRawUserVoucher)
        .toList();
  }

  List<Voucher> _parseRedeemableRaw(dynamic data) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final payload = raw['payload'];
    List items = [];
    if (payload is List) {
      items = payload;
    } else if (payload is Map) {
      items = (payload['items'] as List?) ?? [];
    }
    return items
        .whereType<Map<String, dynamic>>()
        .map(_mapRawRedeemable)
        .toList();
  }

  // ── Raw JSON mappers ──────────────────────────────────────────────────────

  Voucher _mapRawAvailable(Map<String, dynamic> j) => Voucher(
        id: j['id']?.toString() ?? '',
        code: j['code']?.toString() ?? '',
        discountType: j['discountType']?.toString() == 'Percentage'
            ? 'Percentage'
            : 'FixedAmount',
        discountValue: (j['discountValue'] as num?)?.toDouble() ?? 0,
        minOrderValue: (j['minOrderValue'] as num?)?.toDouble(),
        expiryDate: DateTime.tryParse(j['expiryDate']?.toString() ?? ''),
        remainingQuantity: j['remainingQuantity'] as int?,
      );

  Voucher _mapRawUserVoucher(Map<String, dynamic> j) => Voucher(
        id: j['voucherId']?.toString() ?? j['id']?.toString() ?? '',
        code: j['code']?.toString() ?? '',
        discountType: j['discountType']?.toString() == 'Percentage'
            ? 'Percentage'
            : 'FixedAmount',
        discountValue: (j['discountValue'] as num?)?.toDouble() ?? 0,
        minOrderValue: (j['minOrderValue'] as num?)?.toDouble(),
        expiryDate: DateTime.tryParse(j['expiryDate']?.toString() ?? ''),
        isUsed: j['isUsed'] == true,
        isExpired: j['isExpired'] == true,
        status: j['status']?.toString(),
        redeemedAt: DateTime.tryParse(j['redeemedAt']?.toString() ?? ''),
      );

  Voucher _mapRawRedeemable(Map<String, dynamic> j) => Voucher(
        id: j['id']?.toString() ?? '',
        code: j['code']?.toString() ?? '',
        discountType: j['discountType']?.toString() == 'Percentage'
            ? 'Percentage'
            : 'FixedAmount',
        discountValue: (j['discountValue'] as num?)?.toDouble() ?? 0,
        minOrderValue: (j['minOrderValue'] as num?)?.toDouble(),
        expiryDate: DateTime.tryParse(j['expiryDate']?.toString() ?? ''),
        requiredPoints: j['requiredPoints'] as int?,
        remainingQuantity: j['remainingQuantity'] as int?,
        isExpired: j['isExpired'] == true,
      );

  // ── Typed mappers (happy path) ────────────────────────────────────────────

  Voucher _mapAvailable(AvailableVoucherResponse j) => Voucher(
        id: j.id?.toString() ?? '',
        code: j.code,
        discountType:
            j.discountType?.name == 'percentage' ? 'Percentage' : 'FixedAmount',
        discountValue: j.discountValue?.toDouble() ?? 0,
        minOrderValue: j.minOrderValue?.toDouble(),
        expiryDate: j.expiryDate,
        remainingQuantity: j.remainingQuantity,
      );

  Voucher _mapUserVoucher(UserVoucherResponse j) => Voucher(
        id: j.voucherId?.toString() ?? j.id?.toString() ?? '',
        code: j.code,
        discountType:
            j.discountType == 'Percentage' ? 'Percentage' : 'FixedAmount',
        discountValue: j.discountValue?.toDouble() ?? 0,
        minOrderValue: j.minOrderValue?.toDouble(),
        expiryDate: j.expiryDate,
        isUsed: j.isUsed ?? false,
        isExpired: j.isExpired ?? false,
        status: j.status,
        redeemedAt: j.redeemedAt,
      );

  Voucher _mapRedeemable(RedeemableVoucherResponse j) => Voucher(
        id: j.id?.toString() ?? '',
        code: j.code,
        discountType:
            j.discountType?.name == 'percentage' ? 'Percentage' : 'FixedAmount',
        discountValue: j.discountValue?.toDouble() ?? 0,
        minOrderValue: j.minOrderValue?.toDouble(),
        expiryDate: j.expiryDate,
        requiredPoints: j.requiredPoints,
        remainingQuantity: j.remainingQuantity,
        isExpired: j.isExpired ?? false,
      );
}
