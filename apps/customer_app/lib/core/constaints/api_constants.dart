import 'package:flutter/foundation.dart';

class ApiConstants {
  static String host(String path) {
    if (kIsWeb) {
      return "http://localhost:$path";
    } else {
      return "http://10.0.2.2:$path";
    }
  }

  static final String mainBaseUrl = host("7011/api");
  static final String aiBaseUrl = host("3000");
}
