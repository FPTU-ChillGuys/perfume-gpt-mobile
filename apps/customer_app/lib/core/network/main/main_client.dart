import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'main_client.g.dart';

@RestApi()
abstract class MainClient {
  factory MainClient(Dio dio, {String baseUrl}) = _MainClient;

  @GET("/auths/login")
  Future<String> healthCheck();
}