import 'package:flutter/foundation.dart';

class ApiConstants {
  static String host(String path, {bool isHttps = true}) {
    if (kIsWeb) {
      return "${isHttps ? 'https' : 'http'}://localhost:$path";
    } else {
      return "${isHttps ? 'https' : 'http'}://10.0.2.2:$path";
    }
  }

  static final String mainBaseUrl = host("7011/api", isHttps: true);
  static final String aiBaseUrl = host("3000", isHttps: false);
}

String authUrl(String url) => "${ApiConstants.mainBaseUrl}$url";

String conversationUrl(String url) => "${ApiConstants.aiBaseUrl}$url";
