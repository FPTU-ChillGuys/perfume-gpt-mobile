import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../features/inventory/presentation/screens/inventory_screen.dart';
import '../../features/inventory/presentation/screens/product_detail_screen.dart';
import '../../features/inventory/presentation/screens/import_ticket_list_screen.dart';
import '../../features/inventory/presentation/screens/import_ticket_detail_screen.dart';
import '../../features/pos/presentation/screens/pos_screen.dart';
import '../../features/pos/presentation/screens/counter_checkout_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/returns/presentation/screens/return_request_list_screen.dart';
import '../../features/returns/presentation/screens/return_request_detail_screen.dart';
import '../../features/ai_consultation/presentation/pages/chat_page.dart';
import '../../features/ai_consultation/presentation/pages/chat_history_page.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final router = GoRouter(
    initialLocation: '/pos',
    redirect: (context, state) {
      final authState = ref.read(authProvider);

      final isLoading = authState.isLoading;
      final isAuth = authState.value != null;
      final isLoggingIn = state.matchedLocation == '/login';

      if (isLoading) return null;

      if (!isAuth) {
        return isLoggingIn ? null : '/login';
      }

      if (isLoggingIn) {
        return '/pos';
      }

      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithBottomNavBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/pos',
                builder: (context, state) => const PosScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/inventory',
                builder: (context, state) => const InventoryScreen(),
                routes: [
                  GoRoute(
                    path: 'import-tickets',
                    builder: (context, state) => const ImportTicketListScreen(),
                    routes: [
                      GoRoute(
                        path: ':id',
                        builder: (context, state) {
                          final id = state.pathParameters['id']!;
                          return ImportTicketDetailScreen(ticketId: id);
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: ':sku',
                    builder: (context, state) {
                      final sku = state.pathParameters['sku']!;
                      return ProductDetailScreen(sku: sku);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/counter',
                builder: (context, state) => const CounterCheckoutScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/returns',
                builder: (context, state) => const ReturnRequestListScreen(),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) {
                      final id = state.pathParameters['id']!;
                      return ReturnRequestDetailScreen(id: id);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                builder: (context, state) => const ChatPage(),
                routes: [
                  GoRoute(
                    path: 'history',
                    builder: (context, state) => const ChatHistoryPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  ref.listen(authProvider, (_, next) {
    router.refresh();
  });

  return router;
}

class ScaffoldWithBottomNavBar extends StatelessWidget {
  const ScaffoldWithBottomNavBar({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) => navigationShell.goBranch(index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.point_of_sale), label: 'POS'),
          NavigationDestination(
            icon: Icon(Icons.inventory),
            label: 'Inventory',
          ),
          NavigationDestination(icon: Icon(Icons.store), label: 'Counter'),
          NavigationDestination(
            icon: Icon(Icons.assignment_return),
            label: 'Returns',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'AI Chat',
          ),
        ],
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}
