import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'core/services/fcm_service.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/app_snackbar.dart';

final GlobalKey<ScaffoldMessengerState> appScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void _showGlobalError(Object error) {
  final message = _toUserErrorMessage(error);
  final messenger = appScaffoldMessengerKey.currentState;
  if (messenger == null) return;
  AppSnackbar.showError(messenger, message);
}

String _toUserErrorMessage(Object error) {
  final raw = error.toString();
  if (raw.isEmpty) return 'Đã xảy ra lỗi. Vui lòng thử lại.';
  if (raw.toLowerCase().contains('socketexception')) {
    return 'Không thể kết nối mạng. Vui lòng kiểm tra internet.';
  }
  if (raw.toLowerCase().contains('timeout')) {
    return 'Yêu cầu quá thời gian. Vui lòng thử lại.';
  }
  return 'Có lỗi xảy ra: $raw';
}

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
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      // Increase image cache so product images are retained when scrolling,
      // preventing re-fetches that cause blank images.
      PaintingBinding.instance.imageCache
        ..maximumSize = 300
        ..maximumSizeBytes = 150 * 1024 * 1024; // 150 MB
      if (kDebugMode) {
        HttpOverrides.global = _DevHttpOverrides();
      }

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        _showGlobalError(details.exception);
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        _showGlobalError(error);
        return true;
      };

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
    },
    (error, stack) {
      _showGlobalError(error);
    },
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authProvider, (previous, next) {
      if (next.asData?.value != null) {
        unawaited(FcmService.instance.syncToken(ref));
      }
    });

    unawaited(FcmService.instance.initialize(ref));

    return MaterialApp.router(
      title: 'PerfumeGPT',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: appScaffoldMessengerKey,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}
