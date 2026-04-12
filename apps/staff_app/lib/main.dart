import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        googleSignInServerClientIdProvider.overrideWithValue(
          'Y1025537944350-q9emi9huhuasommv3q1n9veeoo4j5jmm.apps.googleusercontent.com',
        ),
      ],
      child: const StaffApp(),
    ),
  );
}

class StaffApp extends ConsumerWidget {
  const StaffApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'PerfumeGPT Staff',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: router,
    );
  }
}
