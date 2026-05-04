import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

/// Same [secure] marker as generated OpenAPI calls so [BearerAuthInterceptor] attaches the token.
const _bearerSecure = [
  <String, String>{
    'type': 'http',
    'scheme': 'bearer',
    'name': 'Bearer',
  },
];

/// Loads image bytes with API auth. Use for URLs that require `Authorization: Bearer …`
/// (plain [NetworkImage] does not send headers).
final authenticatedImageBytesProvider =
    FutureProvider.autoDispose.family<Uint8List?, String>((ref, url) async {
      final trimmed = url.trim();
      if (trimmed.isEmpty) return null;

      final dio = ref.watch(apiClientProvider).dio;

      Future<Uint8List?> fetch({required bool withBearer}) async {
        final res = await dio.get<List<int>>(
          trimmed,
          options: Options(
            responseType: ResponseType.bytes,
            followRedirects: true,
            maxRedirects: 5,
            validateStatus: (s) => s != null && s >= 200 && s < 400,
            extra: withBearer ? {'secure': _bearerSecure} : const {},
          ),
        );
        final data = res.data;
        if (data == null || data.isEmpty) return null;
        return Uint8List.fromList(data);
      }

      try {
        return await fetch(withBearer: true);
      } on DioException catch (e) {
        final code = e.response?.statusCode;
        if (code == 401 || code == 403) {
          try {
            return await fetch(withBearer: false);
          } catch (_) {
            rethrow;
          }
        }
        rethrow;
      }
    });
