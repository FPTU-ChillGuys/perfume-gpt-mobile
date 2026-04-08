//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:perfumegpt_ai_api_client/src/auth/api_key_auth.dart';
import 'package:perfumegpt_ai_api_client/src/auth/basic_auth.dart';
import 'package:perfumegpt_ai_api_client/src/auth/bearer_auth.dart';
import 'package:perfumegpt_ai_api_client/src/auth/oauth.dart';
import 'package:perfumegpt_ai_api_client/src/api/address_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/admin_dashboard_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/attributes_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/auths_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/batches_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/brands_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/campaigns_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/cart_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/categories_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/concentrations_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/import_tickets_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/inventory_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/loyalty_transactions_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/notifications_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/olfactory_families_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/order_cancel_requests_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/order_return_requests_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/orders_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/payments_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/product_variants_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/products_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/profiles_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/reviews_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/scent_notes_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/shippings_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/stock_adjustments_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/suppliers_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/users_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/vouchers_api.dart';

class PerfumegptAiApiClient {
  static const String basePath = r'https://localhost:7011';

  final Dio dio;
  PerfumegptAiApiClient({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : 
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AddressApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AddressApi getAddressApi() {
    return AddressApi(dio);
  }

  /// Get AdminDashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminDashboardApi getAdminDashboardApi() {
    return AdminDashboardApi(dio);
  }

  /// Get AttributesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AttributesApi getAttributesApi() {
    return AttributesApi(dio);
  }

  /// Get AuthsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthsApi getAuthsApi() {
    return AuthsApi(dio);
  }

  /// Get BatchesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BatchesApi getBatchesApi() {
    return BatchesApi(dio);
  }

  /// Get BrandsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BrandsApi getBrandsApi() {
    return BrandsApi(dio);
  }

  /// Get CampaignsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CampaignsApi getCampaignsApi() {
    return CampaignsApi(dio);
  }

  /// Get CartApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CartApi getCartApi() {
    return CartApi(dio);
  }

  /// Get CategoriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CategoriesApi getCategoriesApi() {
    return CategoriesApi(dio);
  }

  /// Get ConcentrationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConcentrationsApi getConcentrationsApi() {
    return ConcentrationsApi(dio);
  }

  /// Get ImportTicketsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportTicketsApi getImportTicketsApi() {
    return ImportTicketsApi(dio);
  }

  /// Get InventoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InventoryApi getInventoryApi() {
    return InventoryApi(dio);
  }

  /// Get LoyaltyTransactionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LoyaltyTransactionsApi getLoyaltyTransactionsApi() {
    return LoyaltyTransactionsApi(dio);
  }

  /// Get NotificationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationsApi getNotificationsApi() {
    return NotificationsApi(dio);
  }

  /// Get OlfactoryFamiliesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OlfactoryFamiliesApi getOlfactoryFamiliesApi() {
    return OlfactoryFamiliesApi(dio);
  }

  /// Get OrderCancelRequestsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrderCancelRequestsApi getOrderCancelRequestsApi() {
    return OrderCancelRequestsApi(dio);
  }

  /// Get OrderReturnRequestsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrderReturnRequestsApi getOrderReturnRequestsApi() {
    return OrderReturnRequestsApi(dio);
  }

  /// Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrdersApi getOrdersApi() {
    return OrdersApi(dio);
  }

  /// Get PaymentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PaymentsApi getPaymentsApi() {
    return PaymentsApi(dio);
  }

  /// Get ProductVariantsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProductVariantsApi getProductVariantsApi() {
    return ProductVariantsApi(dio);
  }

  /// Get ProductsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProductsApi getProductsApi() {
    return ProductsApi(dio);
  }

  /// Get ProfilesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProfilesApi getProfilesApi() {
    return ProfilesApi(dio);
  }

  /// Get ReviewsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReviewsApi getReviewsApi() {
    return ReviewsApi(dio);
  }

  /// Get ScentNotesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ScentNotesApi getScentNotesApi() {
    return ScentNotesApi(dio);
  }

  /// Get ShippingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ShippingsApi getShippingsApi() {
    return ShippingsApi(dio);
  }

  /// Get StockAdjustmentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StockAdjustmentsApi getStockAdjustmentsApi() {
    return StockAdjustmentsApi(dio);
  }

  /// Get SuppliersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuppliersApi getSuppliersApi() {
    return SuppliersApi(dio);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio);
  }

  /// Get VouchersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VouchersApi getVouchersApi() {
    return VouchersApi(dio);
  }
}
