import 'package:customer_app/data/models/conversation_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'conversation_client.g.dart';

@RestApi()
abstract class ConversationClient {
  factory ConversationClient(Dio dio, {String baseUrl}) = _ConversationClient;

  @POST("/conversation/chat/v8")
  Future<ConversationModel> chat({required ConversationModel conversation});
}
