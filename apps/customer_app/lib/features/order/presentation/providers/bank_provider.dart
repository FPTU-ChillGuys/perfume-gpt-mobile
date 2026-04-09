import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bank_provider.g.dart';

class VnBank {
  final String code;
  final String shortName;
  final String name;
  final String logo;

  const VnBank({
    required this.code,
    required this.shortName,
    required this.name,
    required this.logo,
  });

  factory VnBank.fromJson(Map<String, dynamic> json) => VnBank(
        code: json['code'] as String? ?? '',
        shortName: json['shortName'] as String? ?? '',
        name: json['name'] as String? ?? '',
        logo: json['logo'] as String? ?? '',
      );
}

@Riverpod(keepAlive: true)
FutureOr<List<VnBank>> vnBanks(Ref ref) async {
  try {
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 10);
    final request = await client.getUrl(Uri.parse('https://api.vietqr.io/v2/banks'));
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();
    client.close();
    final json = jsonDecode(body) as Map<String, dynamic>;
    final data = json['data'] as List? ?? [];
    final banks = data
        .map((e) => VnBank.fromJson(e as Map<String, dynamic>))
        .where((b) => b.code.isNotEmpty)
        .toList()
      ..sort((a, b) => a.shortName.compareTo(b.shortName));
    return banks;
  } catch (e) {
    debugPrint('[BankProvider] Failed to fetch banks: $e');
    return [];
  }
}
