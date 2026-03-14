import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'login_client.g.dart';

@RestApi()
abstract class LoginClient{
  factory LoginClient(Dio dio, {String baseUrl}) = _LoginClient;

  @GET("/login")
  Future<String> login();

  @GET("/register")
  Future<String> register();

}