import 'dart:io';

import 'package:flutter/foundation.dart';

/// Builds absolute media URLs from API responses (e.g. [profilePictureUrl]).
class MediaUrlResolver {
  static String _localhostToAndroidEmulator(String url) {
    if (url.isEmpty) return url;
    if (!kIsWeb && Platform.isAndroid) {
      return url
          .replaceFirst('https://localhost:', 'https://10.0.2.2:')
          .replaceFirst('http://localhost:', 'http://10.0.2.2:');
    }
    return url;
  }

  /// Returns `null` when [url] is null/empty. Joins relative paths to [apiBaseUrl].
  static String? resolveOptional(String? url, String apiBaseUrl) {
    if (url == null) return null;
    final trimmed = url.trim();
    if (trimmed.isEmpty) return null;
    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return _localhostToAndroidEmulator(trimmed);
    }
    final base = apiBaseUrl.trim().replaceAll(RegExp(r'/$'), '');
    final path = trimmed.startsWith('/') ? trimmed : '/$trimmed';
    return _localhostToAndroidEmulator('$base$path');
  }
}
