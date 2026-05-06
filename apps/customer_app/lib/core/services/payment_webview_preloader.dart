import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Keeps a single warmed-up [WebViewController] ready so opening the payment
/// gateway doesn't pay the full Chromium initialization cost on first use.
class PaymentWebViewPreloader {
  PaymentWebViewPreloader._();

  static final instance = PaymentWebViewPreloader._();

  WebViewController? _controller;
  Future<void>? _prewarmFuture;

  bool get isSupported {
    if (kIsWeb) return false;
    return Platform.isAndroid || Platform.isIOS || Platform.isMacOS;
  }

  void prewarm() {
    if (!isSupported) return;
    if (_controller != null || _prewarmFuture != null) return;

    _prewarmFuture = () async {
      try {
        final controller = WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted);
        await controller.loadHtmlString('<html><body></body></html>');
        _controller = controller;
      } catch (_) {
        _controller = null;
      } finally {
        _prewarmFuture = null;
      }
    }();
    unawaited(_prewarmFuture);
  }

  /// Hand off the prewarmed controller to a payment session and immediately
  /// queue another warm-up for the next checkout.
  WebViewController? acquireController() {
    final cached = _controller;
    _controller = null;
    if (cached != null) {
      // Schedule another warm-up so subsequent payments are also fast.
      Future<void>.microtask(prewarm);
    } else {
      prewarm();
    }
    return cached;
  }
}
