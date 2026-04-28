import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for SurveysApi
void main() {
  final instance = PerfumegptAiApiClient().getSurveysApi();

  group(SurveysApi, () {
    // Trả lời survey và nhận gợi ý AI
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerChatSurvey(List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest, { String userId }) async
    test('test surveyControllerChatSurvey', () async {
      // TODO
    });

    // Trả lời survey và nhận gợi ý AI (v2 - monolithic query)
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerChatSurveyV2(List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest, { String userId }) async
    test('test surveyControllerChatSurveyV2', () async {
      // TODO
    });

    // Trả lời survey và nhận gợi ý AI (v3 - per-question query, skip 0 products)
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerChatSurveyV3(List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest, { String userId }) async
    test('test surveyControllerChatSurveyV3', () async {
      // TODO
    });

    // Trả lời survey V4 — query-based (no AI analysis, trực tiếp query sản phẩm)
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerChatSurveyV4(List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest, { String userId }) async
    test('test surveyControllerChatSurveyV4', () async {
      // TODO
    });

    // Trả lời survey V5 — Hybrid (AI phân tích + Query-based + Ranking score)
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerChatSurveyV5(List<SurveyQuesAnsDetailRequest> surveyQuesAnsDetailRequest, { String userId }) async
    test('test surveyControllerChatSurveyV5', () async {
      // TODO
    });

    // Kiểm tra người dùng đã làm survey lần đầu chưa
    //
    //Future<SurveyControllerDeleteSurveyQuestion200Response> surveyControllerCheckFirstTime(String userId) async
    test('test surveyControllerCheckFirstTime', () async {
      // TODO
    });

    // Tạo câu hỏi survey từ thuộc tính (auto-generate query answers)
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerCreateQuestionFromAttribute(CreateQuestionFromAttributeRequest createQuestionFromAttributeRequest) async
    test('test surveyControllerCreateQuestionFromAttribute', () async {
      // TODO
    });

    // Tạo câu hỏi survey mới
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerCreateSurveyQues(SurveyQuestionRequest surveyQuestionRequest) async
    test('test surveyControllerCreateSurveyQues', () async {
      // TODO
    });

    // Tạo nhiều câu hỏi survey cùng lúc
    //
    //Future<EmailControllerSendEmail200Response> surveyControllerCreateSurveyQueses(List<SurveyQuestionRequest> surveyQuestionRequest) async
    test('test surveyControllerCreateSurveyQueses', () async {
      // TODO
    });

    // Xóa câu hỏi survey (soft delete)
    //
    //Future<SurveyControllerDeleteSurveyQuestion200Response> surveyControllerDeleteSurveyQuestion(String id) async
    test('test surveyControllerDeleteSurveyQuestion', () async {
      // TODO
    });

    // Lấy danh sách câu hỏi survey
    //
    //Future<SurveyControllerGetAllSurveys200Response> surveyControllerGetAllSurveys() async
    test('test surveyControllerGetAllSurveys', () async {
      // TODO
    });

    // Lấy danh sách loại thuộc tính cho survey
    //
    //Future<SurveyControllerGetAttributeTypes200Response> surveyControllerGetAttributeTypes() async
    test('test surveyControllerGetAttributeTypes', () async {
      // TODO
    });

    // Lấy giá trị của 1 loại thuộc tính
    //
    //Future<SurveyControllerGetAttributeValues200Response> surveyControllerGetAttributeValues(String type) async
    test('test surveyControllerGetAttributeValues', () async {
      // TODO
    });

    // Lấy danh sách lịch sử tất cả các lần trả lời survey của người dùng
    //
    //Future<SurveyControllerGetSurveyHistoryListByUserId200Response> surveyControllerGetSurveyHistoryListByUserId(String userId) async
    test('test surveyControllerGetSurveyHistoryListByUserId', () async {
      // TODO
    });

    // Lấy tất cả câu hỏi và câu trả lời survey của người dùng
    //
    //Future<SurveyControllerGetSurveyQuesAnwsByUserId200Response> surveyControllerGetSurveyQuesAnwsByUserId(String userId) async
    test('test surveyControllerGetSurveyQuesAnwsByUserId', () async {
      // TODO
    });

    // Lấy câu hỏi survey theo ID
    //
    //Future<SurveyControllerGetSurveyQuesById200Response> surveyControllerGetSurveyQuesById(String id) async
    test('test surveyControllerGetSurveyQuesById', () async {
      // TODO
    });

    // Cập nhật câu hỏi survey (questionType và/hoặc answers)
    //
    //Future<SurveyControllerGetSurveyQuesById200Response> surveyControllerUpdateSurveyAnswer(String id, SurveyQuestionRequest surveyQuestionRequest) async
    test('test surveyControllerUpdateSurveyAnswer', () async {
      // TODO
    });

  });
}
