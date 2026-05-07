import 'package:go_router/go_router.dart';
import '../../domain/entities/order.dart';
import '../../features/address/presentation/pages/address_form_page.dart';
import '../../features/address/presentation/pages/address_list_page.dart';
import '../../features/ai_consultation/presentation/pages/chat_history_page.dart';
import '../../features/ai_consultation/presentation/pages/chat_page.dart';
import '../../features/ai_consultation/presentation/pages/survey_page.dart';
import '../../features/ai_consultation/presentation/pages/survey_history_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/loyalty/presentation/pages/loyalty_page.dart';
import '../../features/order/presentation/pages/cart_page.dart';
import '../../features/order/presentation/pages/checkout_page.dart';
import '../../features/order/presentation/pages/cancel_order_page.dart';
import '../../features/order/presentation/pages/cancel_request_detail_page.dart';
import '../../features/order/presentation/pages/cancel_request_list_page.dart';
import '../../features/order/presentation/pages/create_return_request_page.dart';
import '../../features/order/presentation/pages/order_detail_page.dart';
import '../../features/order/presentation/pages/order_list_page.dart';
import '../../features/order/presentation/pages/payment_webview_page.dart';
import '../../features/order/presentation/pages/return_request_detail_page.dart';
import '../../features/order/presentation/pages/return_request_list_page.dart';
import '../../features/profile/presentation/pages/profile_edit_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/profile/presentation/pages/scent_preferences_page.dart';
import '../../features/review/presentation/pages/my_reviews_page.dart';
import '../../features/review/presentation/pages/review_detail_page.dart';
import '../../features/review/presentation/pages/write_review_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/store/presentation/pages/product_details_page.dart';
import '../../features/store/presentation/pages/product_list_page.dart';
import '../../features/voucher/presentation/pages/voucher_list_page.dart';

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
      GoRoute(
        path: '/chat/history',
        builder: (context, state) => const ChatHistoryPage(),
      ),
      GoRoute(path: '/survey', builder: (context, state) => const SurveyPage()),
      GoRoute(
        path: '/survey/history',
        builder: (context, state) => const SurveyHistoryPage(),
      ),
      GoRoute(
        path: '/store',
        builder: (context, state) {
          final params = state.uri.queryParameters;
          return ProductListPage(
            source: params['source'],
            sourceLabel: params['sourceLabel'],
            searchQuery: params['search'],
            categoryId: int.tryParse(params['categoryId'] ?? ''),
            categoryName: params['categoryName'],
            campaignId: params['campaignId'],
            initialBrandId: int.tryParse(params['brandId'] ?? ''),
          );
        },
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
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          return CheckoutPage(
            voucherCodeFromCart: extra?['voucherCode'] as String?,
            selectedItemIdsFromCart: (extra?['selectedItemIds'] as List?)
                ?.map((e) => e.toString())
                .toList(),
            buyNowFast: extra?['buyNowFast'] == true,
          );
        },
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
        path: '/orders/:orderId/cancel',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return CancelOrderPage(
            orderId: extra['orderId'] as String,
            orderStatus: extra['orderStatus'] as String?,
            showBankInfoForStatus: extra['showBankInfoForStatus'] as bool?,
            mode: extra['mode'] as String,
            note: extra['note'] as String,
            needRefund: extra['needRefund'] as bool,
            loseDepositWarning: (extra['loseDepositWarning'] as bool?) ?? false,
          );
        },
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '/profile/edit',
        builder: (context, state) => const ProfileEditPage(),
      ),
      GoRoute(
        path: '/scent-preferences',
        builder: (context, state) => const ScentPreferencesPage(),
      ),
      GoRoute(
        path: '/addresses',
        builder: (context, state) => const AddressListPage(),
      ),
      GoRoute(
        path: '/addresses/new',
        builder: (context, state) => const AddressFormPage(),
      ),
      GoRoute(
        path: '/addresses/:id/edit',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return AddressFormPage(addressId: id);
        },
      ),
      GoRoute(
        path: '/vouchers',
        builder: (context, state) => const VoucherListPage(),
      ),
      GoRoute(
        path: '/reviews',
        builder: (context, state) => const MyReviewsPage(),
      ),
      GoRoute(
        path: '/reviews/write',
        builder: (context, state) {
          final params = state.uri.queryParameters;
          return WriteReviewPage(
            orderDetailId: params['orderDetailId'] ?? '',
            variantId: params['variantId'],
            variantName: params['variantName'],
          );
        },
      ),
      GoRoute(
        path: '/reviews/:reviewId',
        builder: (context, state) {
          final reviewId = state.pathParameters['reviewId']!;
          return ReviewDetailPage(reviewId: reviewId);
        },
      ),
      GoRoute(
        path: '/return-requests',
        builder: (context, state) => const ReturnRequestListPage(),
      ),
      GoRoute(
        path: '/return-requests/create',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return CreateReturnRequestPage(
            orderId: extra['orderId'] as String,
            orderCode: extra['orderCode'] as String,
            orderItems: extra['orderItems'] as List<OrderDetailItem>,
          );
        },
      ),
      GoRoute(
        path: '/return-requests/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ReturnRequestDetailPage(requestId: id);
        },
      ),
      GoRoute(
        path: '/cancel-requests',
        builder: (context, state) => const CancelRequestListPage(),
      ),
      GoRoute(
        path: '/cancel-requests/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return CancelRequestDetailPage(requestId: id);
        },
      ),
      GoRoute(
        path: '/loyalty',
        builder: (context, state) => const LoyaltyPage(),
      ),
    ],
  );
}
