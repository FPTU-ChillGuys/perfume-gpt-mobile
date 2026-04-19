//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:perfumegpt_ai_api_client/src/auth/api_key_auth.dart';
import 'package:perfumegpt_ai_api_client/src/auth/basic_auth.dart';
import 'package:perfumegpt_ai_api_client/src/auth/bearer_auth.dart';
import 'package:perfumegpt_ai_api_client/src/auth/oauth.dart';
import 'package:perfumegpt_ai_api_client/src/api/ai_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/ai_acceptance_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/admin_instructions_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/app_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/cart_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/conversation_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/dictionary_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/email_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/hybrid_search_embeddings_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/inventory_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/logs_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/orders_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/products_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/profile_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/recommendation_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/reviews_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/sourcing_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/surveys_api.dart';
import 'package:perfumegpt_ai_api_client/src/api/trends_api.dart';

class PerfumegptAiApiClient {
  static const String basePath = r'https://ai-backend-sep490.vqnofficial.win';

  final Dio dio;
  PerfumegptAiApiClient({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : this.dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: basePathOverride ?? basePath,
               connectTimeout: const Duration(milliseconds: 5000),
               receiveTimeout: const Duration(milliseconds: 3000),
             ),
           ) {
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
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
                  as OAuthInterceptor)
              .tokens[name] =
          token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
                  as BearerAuthInterceptor)
              .tokens[name] =
          token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(
        username,
        password,
      );
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
                    (element) => element is ApiKeyAuthInterceptor,
                  )
                  as ApiKeyAuthInterceptor)
              .apiKeys[name] =
          apiKey;
    }
  }

  /// Get AIApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AIApi getAIApi() {
    return AIApi(dio);
  }

  /// Get AIAcceptanceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AIAcceptanceApi getAIAcceptanceApi() {
    return AIAcceptanceApi(dio);
  }

  /// Get AdminInstructionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminInstructionsApi getAdminInstructionsApi() {
    return AdminInstructionsApi(dio);
  }

  /// Get AppApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppApi getAppApi() {
    return AppApi(dio);
  }

  /// Get CartApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CartApi getCartApi() {
    return CartApi(dio);
  }

  /// Get ConversationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConversationApi getConversationApi() {
    return ConversationApi(dio);
  }

  /// Get DictionaryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DictionaryApi getDictionaryApi() {
    return DictionaryApi(dio);
  }

  /// Get EmailApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EmailApi getEmailApi() {
    return EmailApi(dio);
  }

  /// Get HybridSearchEmbeddingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HybridSearchEmbeddingsApi getHybridSearchEmbeddingsApi() {
    return HybridSearchEmbeddingsApi(dio);
  }

  /// Get InventoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InventoryApi getInventoryApi() {
    return InventoryApi(dio);
  }

  /// Get LogsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogsApi getLogsApi() {
    return LogsApi(dio);
  }

  /// Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrdersApi getOrdersApi() {
    return OrdersApi(dio);
  }

  /// Get ProductsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProductsApi getProductsApi() {
    return ProductsApi(dio);
  }

  /// Get ProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProfileApi getProfileApi() {
    return ProfileApi(dio);
  }

  /// Get RecommendationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecommendationApi getRecommendationApi() {
    return RecommendationApi(dio);
  }

  /// Get ReviewsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReviewsApi getReviewsApi() {
    return ReviewsApi(dio);
  }

  /// Get SourcingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SourcingApi getSourcingApi() {
    return SourcingApi(dio);
  }

  /// Get SurveysApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SurveysApi getSurveysApi() {
    return SurveysApi(dio);
  }

  /// Get TrendsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrendsApi getTrendsApi() {
    return TrendsApi(dio);
  }
}
