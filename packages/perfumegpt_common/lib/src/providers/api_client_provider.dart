import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

const _connectTimeout = Duration(seconds: 20);
const _sendTimeout = Duration(seconds: 25);
const _receiveTimeout = Duration(seconds: 25);

void _configureDioPolicies(Dio dio) {
  dio.options
    ..connectTimeout = _connectTimeout
    ..sendTimeout = _sendTimeout
    ..receiveTimeout = _receiveTimeout;

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (error, handler) async {
        final shouldRetry =
            error.type == DioExceptionType.connectionTimeout ||
            error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionError;
        final method = error.requestOptions.method.toUpperCase();
        final isRetryableMethod = method == 'GET' || method == 'HEAD';
        final alreadyRetried = error.requestOptions.extra['retried'] == true;

        if (shouldRetry && isRetryableMethod && !alreadyRetried) {
          error.requestOptions.extra['retried'] = true;
          await Future<void>.delayed(const Duration(milliseconds: 250));
          try {
            final retry = await dio.fetch(error.requestOptions);
            return handler.resolve(retry);
          } catch (_) {}
        }
        handler.next(error);
      },
    ),
  );
}

@Riverpod(keepAlive: true)
PerfumegptApiClient apiClient(Ref ref) {
  // Local-first for dev. Override with:
  // --dart-define API_BASE_URL=https://your-host:port
  final fromDefine = const String.fromEnvironment('API_BASE_URL');
  String baseUrl = fromDefine.isNotEmpty ? fromDefine : 'https://localhost:7011';

  if (fromDefine.isEmpty && !kIsWeb && Platform.isAndroid) {
    // Android emulator cannot reach host via localhost.
    baseUrl = 'https://10.0.2.2:7011';
  }

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  _configureDioPolicies(dio);

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
  final fromDefine = const String.fromEnvironment('AI_API_BASE_URL');
  String baseUrl = fromDefine.isNotEmpty
      ? fromDefine
      : 'https://ai-backend-sep490.vqnofficial.win';

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  _configureDioPolicies(dio);

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
