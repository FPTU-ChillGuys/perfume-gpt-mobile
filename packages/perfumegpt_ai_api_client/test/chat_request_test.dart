import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

// tests for ChatRequest
void main() {
  final ChatRequest? instance = /* ChatRequest(...) */ null;
  // TODO add properties to the entity

  group(ChatRequest, () {
    // ID cuộc hội thoại
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // ID người dùng (optional — tự động lấy từ JWT token nếu không truyền)
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Danh sách tin nhắn
    // List<ChatMessageRequest> messages
    test('to test the property `messages`', () async {
      // TODO
    });

    // Chế độ nhân viên tư vấn tại quầy
    // bool isStaff (default value: false)
    test('to test the property `isStaff`', () async {
      // TODO
    });

    // Client là Mobile App
    // bool isMobile (default value: false)
    test('to test the property `isMobile`', () async {
      // TODO
    });
  });
}
