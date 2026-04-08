import 'dart:io';
import 'package:flutter/foundation.dart';

/// Resolves image URLs for the current platform.
/// On Android emulator, replaces `localhost` with `10.0.2.2` so the device
/// can reach the host machine's backend.
class ImageUrlHelper {
  static String resolve(String url) {
    if (url.isEmpty) return url;
    if (!kIsWeb && Platform.isAndroid) {
      return url
          .replaceFirst('https://localhost:', 'https://10.0.2.2:')
          .replaceFirst('http://localhost:', 'http://10.0.2.2:');
    }
    return url;
  }
}
