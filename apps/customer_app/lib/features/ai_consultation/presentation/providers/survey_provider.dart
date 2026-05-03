import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:drift/drift.dart' hide Column;
import '../../../../core/db/database_provider.dart';
import '../../../../core/db/database.dart';

class SurveyAnswer {
  final String questionId;
  final String answerId;

  SurveyAnswer({required this.questionId, required this.answerId});
}

class SurveyResult {
  final String? aiMessage;
  final List<ProductCardOutputItemDto> products;

  SurveyResult({this.aiMessage, required this.products});
}

class SurveyQuestionView {
  final String id;
  final String question;
  final List<SurveyAnswerView> answers;

  SurveyQuestionView({required this.id, required this.question, required this.answers});
}

class SurveyAnswerView {
  final String id;
  final String answer;

  SurveyAnswerView({required this.id, required this.answer});
}

class SurveyNotifier extends AsyncNotifier<SurveyResult?> {
  SurveyNotifier();

  @override
  Future<SurveyResult?> build() async {
    return null;
  }

  Future<List<SurveyQuestionView>> loadQuestions() async {
    try {
      final api = ref.read(common.aiApiClientProvider).getSurveysApi();
      final response = await api.surveyControllerGetAllSurveys();
      final questions = response.data?.data;
      if (questions != null && questions.isNotEmpty) {
        return questions.where((q) => q.isActive).map((q) {
          final answers = q.answers ?? [];
          return SurveyQuestionView(
            id: q.id,
            question: q.question ?? '',
            answers: answers.map((a) => SurveyAnswerView(
              id: a.id,
              answer: a.answer ?? '',
            )).toList(),
          );
        }).toList();
      }
    } catch (_) {}

    return [
      SurveyQuestionView(
        id: 'gender',
        question: 'Bạn đang tìm nước hoa cho ai?',
        answers: [
          SurveyAnswerView(id: 'gender_men', answer: 'Nam'),
          SurveyAnswerView(id: 'gender_women', answer: 'Nữ'),
          SurveyAnswerView(id: 'gender_unisex', answer: 'Unisex'),
        ],
      ),
      SurveyQuestionView(
        id: 'occasion',
        question: 'Dịp sử dụng là gì?',
        answers: [
          SurveyAnswerView(id: 'occasion_daily', answer: 'Hàng ngày'),
          SurveyAnswerView(id: 'occasion_office', answer: 'Đi làm'),
          SurveyAnswerView(id: 'occasion_date', answer: 'Hẹn hò'),
          SurveyAnswerView(id: 'occasion_special', answer: 'Dịp đặc biệt'),
        ],
      ),
      SurveyQuestionView(
        id: 'budget',
        question: 'Ngân sách của bạn?',
        answers: [
          SurveyAnswerView(id: 'budget_under1m', answer: 'Dưới 1 triệu'),
          SurveyAnswerView(id: 'budget_1m_3m', answer: '1 - 3 triệu'),
          SurveyAnswerView(id: 'budget_above3m', answer: 'Trên 3 triệu'),
        ],
      ),
      SurveyQuestionView(
        id: 'scent_family',
        question: 'Hương thơm bạn thích?',
        answers: [
          SurveyAnswerView(id: 'scent_floral', answer: 'Hoa cỏ'),
          SurveyAnswerView(id: 'scent_woody', answer: 'Gỗ'),
          SurveyAnswerView(id: 'scent_citrus', answer: 'Cam chanh'),
          SurveyAnswerView(id: 'scent_oriental', answer: 'Phương Đông'),
          SurveyAnswerView(id: 'scent_fresh', answer: 'Tươi mát'),
        ],
      ),
      SurveyQuestionView(
        id: 'longevity',
        question: 'Thời gian lưu hương mong muốn?',
        answers: [
          SurveyAnswerView(id: 'longevity_moderate', answer: 'Trung bình (3-5h)'),
          SurveyAnswerView(id: 'longevity_long', answer: 'Lâu (6-8h)'),
          SurveyAnswerView(id: 'longevity_eternal', answer: 'Rất lâu (8h+)'),
        ],
      ),
    ];
  }

  Future<SurveyResult?> submitSurvey(String userId, List<SurveyAnswer> answers) async {
    state = const AsyncLoading();
    try {
      final api = ref.read(common.aiApiClientProvider).getSurveysApi();

      final surveyQuesAnsDetailRequest = answers.map((a) {
        return SurveyQuesAnsDetailRequest(
          questionId: a.questionId,
          answerId: a.answerId,
        );
      }).toList();

      final response = await api.surveyControllerChatSurveyV5(
        surveyQuesAnsDetailRequest: surveyQuesAnsDetailRequest,
        userId: userId,
      );

      final rawData = response.data?.data;
      Map<String, dynamic>? resultMap;
      String? aiMessage;
      List<dynamic>? productsJson;

      if (rawData != null && rawData.isNotEmpty) {
        try {
          resultMap = jsonDecode(rawData) as Map<String, dynamic>;
          aiMessage = resultMap['aiMessage'] as String?;
          productsJson = resultMap['products'] as List<dynamic>?;
        } catch (_) {}
      }

      final products = productsJson
          ?.map((p) => ProductCardOutputItemDto.fromJson(p as Map<String, dynamic>))
          .toList() ?? [];

      final result = SurveyResult(
        aiMessage: aiMessage,
        products: products,
      );

      final dao = ref.read(surveyDaoProvider);
      final sessionId = DateTime.now().millisecondsSinceEpoch.toString();
      final answersMap = {for (var a in answers) a.questionId: a.answerId};
      await dao.insertSession(LocalSurveySessionsCompanion.insert(
        id: sessionId,
        userId: userId,
        answersJson: jsonEncode(answersMap),
        resultJson: rawData ?? jsonEncode({'aiMessage': aiMessage, 'products': productsJson}),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        productCount: Value(products.length),
      ));

      state = AsyncData(result);
      return result;
    } catch (e, st) {
      state = AsyncError(e, st);
      return null;
    }
  }

  Future<List<LocalSurveySession>> loadHistory() async {
    final dao = ref.read(surveyDaoProvider);
    return dao.getAllSessions();
  }
}

final surveyProvider = AsyncNotifierProvider<SurveyNotifier, SurveyResult?>(
  SurveyNotifier.new,
);