import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
PerfumegptApiClient apiClient(Ref ref) {
  String baseUrl = 'https://backend-sep490.vqnofficial.win';

  /*if (!kIsWeb && Platform.isAndroid) {
    baseUrl = 'https://10.0.2.2:7011'; // Assuming local dev for now, or match prod
  }*/

  final dio = Dio(BaseOptions(baseUrl: baseUrl));

  if (!kIsWeb && kDebugMode) {
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  return PerfumegptApiClient(dio: dio);
}

@Riverpod(keepAlive: true)
PerfumegptAiApiClient aiApiClient(Ref ref) {
  String baseUrl = 'https://ai-backend-sep490.vqnofficial.win';

  /*if (!kIsWeb && Platform.isAndroid) {
    baseUrl = 'https://10.0.2.2:7011';
  }*/

  final dio = Dio(BaseOptions(baseUrl: baseUrl));

  if (!kIsWeb && kDebugMode) {
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  return PerfumegptAiApiClient(dio: dio);
}
