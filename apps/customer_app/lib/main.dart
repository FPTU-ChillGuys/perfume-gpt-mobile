import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

/// Bypasses SSL certificate validation in debug mode so that
/// Image.network can load images from the local dev server (self-signed cert).
class _DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Increase image cache so product images are retained when scrolling,
  // preventing re-fetches that cause blank images.
  PaintingBinding.instance.imageCache
    ..maximumSize = 300
    ..maximumSizeBytes = 150 * 1024 * 1024; // 150 MB
  if (kDebugMode) {
    HttpOverrides.global = _DevHttpOverrides();
  }
  runApp(
    ProviderScope(
      overrides: [
        googleSignInServerClientIdProvider.overrideWithValue(
          '173433966327-fuvt92u2qgeobctvlni6fl52onvak7e8.apps.googleusercontent.com',
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PerfumeGPT',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}
