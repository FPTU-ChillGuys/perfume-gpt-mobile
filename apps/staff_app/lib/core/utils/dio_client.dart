import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dioClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.perfumegpt.com/v1', // Placeholder API URL
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  // Add interceptors for auth tokens, logging, etc.
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

  return dio;
}
