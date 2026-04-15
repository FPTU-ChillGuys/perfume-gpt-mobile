import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

// tests for AIAcceptance
void main() {
  final AIAcceptance? instance = /* AIAcceptance(...) */ null;
  // TODO add properties to the entity

  group(AIAcceptance, () {
    // ID duy nhất (UUID)
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Ngày tạo bản ghi
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Ngày cập nhật gần nhất
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Trạng thái hoạt động
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // ID người dùng
    // Object userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Id của cart item nếu có liên quan
    // Object cartItemId
    test('to test the property `cartItemId`', () async {
      // TODO
    });

    // ID acceptance cho một response (dùng để nhóm theo lần phản hồi)
    // Object responseId
    test('to test the property `responseId`', () async {
      // TODO
    });

    // Ngữ cảnh phát sinh acceptance (chatbot/survey/trend/recommendation/repurchase/cart_legacy)
    // Object contextType
    test('to test the property `contextType`', () async {
      // TODO
    });

    // Mã tham chiếu nguồn (conversationId, surveyId, ...) nếu có
    // Object sourceRefId
    test('to test the property `sourceRefId`', () async {
      // TODO
    });

    // Danh sách product id dưới dạng JSON string
    // Object productIdsJson
    test('to test the property `productIdsJson`', () async {
      // TODO
    });

    // Metadata mở rộng dưới dạng JSON string
    // Object metadataJson
    test('to test the property `metadataJson`', () async {
      // TODO
    });

    // Thời điểm false no-click được phép hiển thị
    // Object visibleAfterAt
    test('to test the property `visibleAfterAt`', () async {
      // TODO
    });

    // Thời điểm người dùng click chấp nhận
    // Object clickedAt
    test('to test the property `clickedAt`', () async {
      // TODO
    });

    // Trạng thái chấp nhận AI
    // bool isAccepted
    test('to test the property `isAccepted`', () async {
      // TODO
    });

  });
}
