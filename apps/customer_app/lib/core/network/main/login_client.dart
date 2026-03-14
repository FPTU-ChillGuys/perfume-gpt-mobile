import 'package:customer_app/data/models/base_response_model.dart';
import 'package:customer_app/data/models/login_request_model.dart';
import 'package:customer_app/data/models/register_request_model.dart';
import 'package:customer_app/data/models/token_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'login_client.g.dart';

@RestApi()
abstract class LoginClient {
  factory LoginClient(Dio dio, {String baseUrl}) = _LoginClient;

  /// POST /api/auths/login
  @POST("/login")
  Future<BaseResponseModel<TokenResponseModel>> login(
    @Body() LoginRequestModel request,
  );

  /// POST /api/auths/register
  @POST("/register")
  Future<BaseResponseModel<String>> register(
    @Body() RegisterRequestModel request,
  );

  /// GET /api/auths/verify-email?email=&token=
  @GET("/verify-email")
  Future<BaseResponseModel<String>> verifyEmail(
    @Query("email") String email,
    @Query("token") String token,
  );
}