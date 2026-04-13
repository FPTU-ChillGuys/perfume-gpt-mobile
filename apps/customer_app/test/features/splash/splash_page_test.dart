import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:customer_app/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

class MockAuthRepository implements AuthRepository {
  final User? currentUser;
  MockAuthRepository({this.currentUser});

  @override
  Future<User?> getCurrentUser() async => currentUser;

  @override
  Future<User?> login(String email, String password) async => currentUser;

  @override
  Future<User?> googleLogin() async => currentUser;

  @override
  Future<void> logout() async {}

  @override
  Future<void> register(String email, String password, String name) async {}
}

void main() {
  testWidgets('SplashPage redirects to / when user is null', (tester) async {
    final router = GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => const Scaffold(body: Text('Home Page')),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const Scaffold(body: Text('Login Page')),
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authRepositoryProvider.overrideWith(
            (ref) => MockAuthRepository(currentUser: null),
          ),
        ],
        child: MaterialApp.router(routerConfig: router),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(find.text('Home Page'), findsOneWidget);
    expect(find.text('Login Page'), findsNothing);
  });

  testWidgets('SplashPage redirects to / when user is logged in', (
    tester,
  ) async {
    final router = GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => const Scaffold(body: Text('Home Page')),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const Scaffold(body: Text('Login Page')),
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authRepositoryProvider.overrideWith(
            (ref) => MockAuthRepository(
              currentUser: const User(id: '1', email: 'test@test.com'),
            ),
          ),
        ],
        child: MaterialApp.router(routerConfig: router),
      ),
    );

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(find.text('Home Page'), findsOneWidget);
  });
}
