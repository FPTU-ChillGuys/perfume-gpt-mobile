import 'package:go_router/go_router.dart';
import '../../features/ai_consultation/presentation/pages/chat_page.dart';
import '../../features/ai_consultation/presentation/pages/quiz_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/order/presentation/pages/cart_page.dart';
import '../../features/order/presentation/pages/checkout_page.dart';
import '../../features/order/presentation/pages/order_detail_page.dart';
import '../../features/order/presentation/pages/order_list_page.dart';
import '../../features/order/presentation/pages/payment_webview_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/store/presentation/pages/product_details_page.dart';
import '../../features/store/presentation/pages/product_list_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/chat', builder: (context, state) => const ChatPage()),
      GoRoute(path: '/quiz', builder: (context, state) => const QuizPage()),
      GoRoute(
        path: '/store',
        builder: (context, state) => const ProductListPage(),
      ),
      GoRoute(
        path: '/product/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ProductDetailsPage(productId: id);
        },
      ),
      GoRoute(path: '/cart', builder: (context, state) => const CartPage()),
      GoRoute(
        path: '/checkout',
        builder: (context, state) => const CheckoutPage(),
      ),
      GoRoute(
        path: '/payment-webview',
        builder: (context, state) {
          final url = state.uri.queryParameters['url'] ?? '';
          return PaymentWebViewPage(paymentUrl: url);
        },
      ),
      GoRoute(
        path: '/orders',
        builder: (context, state) => const OrderListPage(),
      ),
      GoRoute(
        path: '/orders/:orderId',
        builder: (context, state) {
          final orderId = state.pathParameters['orderId']!;
          return OrderDetailPage(orderId: orderId);
        },
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfilePage(),
      ),
    ],
  );
}
