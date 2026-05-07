import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

const _debugConnectTimeout = Duration(seconds: 20);
const _debugSendTimeout = Duration(seconds: 25);
const _debugReceiveTimeout = Duration(seconds: 25);
const _releaseConnectTimeout = Duration(seconds: 8);
const _releaseSendTimeout = Duration(seconds: 12);
const _releaseReceiveTimeout = Duration(seconds: 12);
const _releaseAiConnectTimeout = Duration(seconds: 12);
const _releaseAiSendTimeout = Duration(seconds: 30);
const _releaseAiReceiveTimeout = Duration(seconds: 30);

const _defaultProdApiBaseUrl = 'https://backend-sep490.vqnofficial.win';
const _defaultLocalApiBaseUrl = 'https://backend-sep490.vqnofficial.win';
const _defaultAndroidEmulatorApiBaseUrl = 'https://backend-sep490.vqnofficial.win';

void _configureDioPolicies(Dio dio, {required bool isRelease}) {
  final connectTimeout = isRelease ? _releaseConnectTimeout : _debugConnectTimeout;
  final sendTimeout = isRelease ? _releaseSendTimeout : _debugSendTimeout;
  final receiveTimeout = isRelease ? _releaseReceiveTimeout : _debugReceiveTimeout;

  dio.options
    ..connectTimeout = connectTimeout
    ..sendTimeout = sendTimeout
    ..receiveTimeout = receiveTimeout;

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

        if (!isRelease && shouldRetry && isRetryableMethod && !alreadyRetried) {
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
  // Override explicitly with:
  // --dart-define API_BASE_URL=https://your-host:port
  final fromDefine = const String.fromEnvironment('API_BASE_URL');
  String baseUrl;
  if (fromDefine.isNotEmpty) {
    baseUrl = fromDefine;
  } else if (kReleaseMode) {
    // Physical devices cannot reach localhost/10.0.2.2.
    baseUrl = _defaultProdApiBaseUrl;
  } else if (!kIsWeb && Platform.isAndroid) {
    // Android emulator cannot reach host via localhost.
    baseUrl = _defaultAndroidEmulatorApiBaseUrl;
  } else {
    baseUrl = _defaultLocalApiBaseUrl;
  }

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  _configureDioPolicies(dio, isRelease: kReleaseMode);

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
  _configureDioPolicies(dio, isRelease: kReleaseMode);
  if (kReleaseMode) {
    // AI responses can be slower than regular APIs on mobile networks.
    dio.options
      ..connectTimeout = _releaseAiConnectTimeout
      ..sendTimeout = _releaseAiSendTimeout
      ..receiveTimeout = _releaseAiReceiveTimeout;
  }

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
