import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for ConversationApi
void main() {
  final instance = PerfumegptApiClient().getConversationApi();

  group(ConversationApi, () {
    // Chat V10 (Profile-first + Structured Search)
    //
    //Future<ConversationControllerConversationV8200Response> conversationControllerConversationV10(ConversationRequestDto conversationRequestDto) async
    test('test conversationControllerConversationV10', () async {
      // TODO
    });

    // Chat V8
    //
    //Future<ConversationControllerConversationV8200Response> conversationControllerConversationV8(ConversationRequestDto conversationRequestDto) async
    test('test conversationControllerConversationV8', () async {
      // TODO
    });

    // Lấy tất cả cuộc hội thoại
    //
    //Future<ConversationControllerGetAllConversations200Response> conversationControllerGetAllConversations() async
    test('test conversationControllerGetAllConversations', () async {
      // TODO
    });

    // Lấy danh sách cuộc hội thoại có phân trang
    //
    //Future<LogControllerGetPagedEventLogs200Response> conversationControllerGetAllConversationsPaginated(num pageNumber, num pageSize, { String userId }) async
    test('test conversationControllerGetAllConversationsPaginated', () async {
      // TODO
    });

    // Lấy cuộc hội thoại theo ID
    //
    //Future conversationControllerGetConversationById(String id) async
    test('test conversationControllerGetConversationById', () async {
      // TODO
    });

  });
}
