import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
PerfumegptApiClient apiClient(Ref ref) {
  String baseUrl = 'https://localhost:7011';

  if (!kIsWeb && Platform.isAndroid) {
    baseUrl = 'https://10.0.2.2:7011';
  }

  final dio = Dio(BaseOptions(baseUrl: baseUrl));

  if (!kIsWeb && kDebugMode) {
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (client) {
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    };
  }

  return PerfumegptApiClient(dio: dio);
}
