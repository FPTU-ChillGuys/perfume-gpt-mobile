import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

/// tests for AdminInstructionsApi
void main() {
  final instance = PerfumegptAiApiClient().getAdminInstructionsApi();

  group(AdminInstructionsApi, () {
    // Tạo chỉ thị admin mới
    //
    //Future<AdminInstructionControllerCreateInstruction200Response> adminInstructionControllerCreateInstruction(CreateAdminInstructionRequest createAdminInstructionRequest) async
    test('test adminInstructionControllerCreateInstruction', () async {
      // TODO
    });

    // Xóa chỉ thị admin
    //
    //Future<SurveyControllerDeleteSurveyQuestion200Response> adminInstructionControllerDeleteInstruction(String id) async
    test('test adminInstructionControllerDeleteInstruction', () async {
      // TODO
    });

    // Lấy tất cả chỉ thị admin
    //
    //Future<AdminInstructionControllerGetAllInstructions200Response> adminInstructionControllerGetAllInstructions() async
    test('test adminInstructionControllerGetAllInstructions', () async {
      // TODO
    });

    // Gộp chỉ thị theo loại thành prompt cho AI
    //
    //Future<EmailControllerSendEmail200Response> adminInstructionControllerGetCombinedPromptByType(String type) async
    test('test adminInstructionControllerGetCombinedPromptByType', () async {
      // TODO
    });

    // Lấy chỉ thị admin theo ID
    //
    //Future<AdminInstructionControllerCreateInstruction200Response> adminInstructionControllerGetInstructionById(String id) async
    test('test adminInstructionControllerGetInstructionById', () async {
      // TODO
    });

    // Lấy chỉ thị theo loại (system | prompt | rule)
    //
    //Future<AdminInstructionControllerGetAllInstructions200Response> adminInstructionControllerGetInstructionsByType(String type) async
    test('test adminInstructionControllerGetInstructionsByType', () async {
      // TODO
    });

    // Cập nhật chỉ thị admin
    //
    //Future<AdminInstructionControllerCreateInstruction200Response> adminInstructionControllerUpdateInstruction(String id, UpdateAdminInstructionRequest updateAdminInstructionRequest) async
    test('test adminInstructionControllerUpdateInstruction', () async {
      // TODO
    });
  });
}
