import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for ConversationApi
void main() {
  final instance = PerfumegptAiApiClient().getConversationApi();

  group(ConversationApi, () {
    // Chat với AI (Advanced V10 logic)
    //
    //Future<ConversationControllerGetAllConversations200Response> conversationControllerChat(ChatRequest chatRequest) async
    test('test conversationControllerChat', () async {
      // TODO
    });

    // Chat V10 Staff (Quick Counter Consultation Mode)
    //
    //Future<ConversationControllerGetAllConversations200Response> conversationControllerChatStaff(ChatRequest chatRequest) async
    test('test conversationControllerChatStaff', () async {
      // TODO
    });

    // Chat với AI (V11 — individual message persistence)
    //
    //Future<ConversationControllerChatV11200Response> conversationControllerChatV11(ChatRequest chatRequest) async
    test('test conversationControllerChatV11', () async {
      // TODO
    });

    // Chat V11 Staff (Quick Counter Consultation Mode)
    //
    //Future<ConversationControllerChatV11200Response> conversationControllerChatV11Staff(ChatRequest chatRequest) async
    test('test conversationControllerChatV11Staff', () async {
      // TODO
    });

    // Lấy tất cả cuộc hội thoại
    //
    //Future<ConversationControllerGetAllConversations200Response> conversationControllerGetAllConversations() async
    test('test conversationControllerGetAllConversations', () async {
      // TODO
    });

    // Lấy danh sách hội thoại có phân trang
    //
    //Future<ConversationControllerGetMyConversationHistory200Response> conversationControllerGetAllConversationsPaginated(num pageNumber, num pageSize, String sortOrder, bool isDescending, { String userId }) async
    test('test conversationControllerGetAllConversationsPaginated', () async {
      // TODO
    });

    // Lấy cuộc hội thoại theo ID
    //
    //Future conversationControllerGetConversationById(String id) async
    test('test conversationControllerGetConversationById', () async {
      // TODO
    });

    // Lấy lịch sử chat của user hiện tại
    //
    //Future<ConversationControllerGetMyConversationHistory200Response> conversationControllerGetMyConversationHistory(num pageNumber, num pageSize, String sortOrder, bool isDescending, { String userId }) async
    test('test conversationControllerGetMyConversationHistory', () async {
      // TODO
    });

  });
}
