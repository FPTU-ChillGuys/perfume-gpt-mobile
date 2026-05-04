import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:uuid/uuid.dart';
import '../../../../core/db/database.dart';
import '../../../../core/db/database_provider.dart';

class SurveyQuestionView {
  final String id;
  final String question;
  final String questionType;
  final List<SurveyAnswerView> answers;

  SurveyQuestionView({
    required this.id,
    required this.question,
    required this.questionType,
    required this.answers,
  });
}

class SurveyAnswerView {
  final String id;
  final String answer;
  final String displayText;

  SurveyAnswerView({
    required this.id,
    required this.answer,
    required this.displayText,
  });
}

class SurveyNotifier extends AsyncNotifier<MobileSurveyResponseData?> {
  @override
  Future<MobileSurveyResponseData?> build() async => null;

  Future<List<SurveyQuestionView>> loadQuestions() async {
    try {
      final api = ref.read(common.aiApiClientProvider).getSurveysApi();
      final response = await api.surveyControllerGetMobileSurveyQuestions();
      final questions = response.data?.data;
      if (questions != null && questions.isNotEmpty) {
        return questions
            .where((q) => q.isActive)
            .map((q) => SurveyQuestionView(
                  id: q.id,
                  question: q.question,
                  questionType: q.questionType,
                  answers: q.answers
                      .map((a) => SurveyAnswerView(
                            id: a.id,
                            answer: a.answer,
                            displayText: a.displayText,
                          ))
                      .toList(),
                ))
            .toList();
      }
    } catch (e) {
      // API failed — using fallback questions
    }

    return _fallbackQuestions();
  }

  Future<MobileSurveyResponseData?> submitSurvey(
    String userId,
    List<({String questionId, String answerId})> answers,
  ) async {
    state = const AsyncLoading();
    try {
      final api = ref.read(common.aiApiClientProvider).getSurveysApi();

      final request = MobileSurveyRequest(
        userId: userId,
        answers: answers
            .map((a) => MobileSurveyAnswer(
                  questionId: a.questionId,
                  answerId: a.answerId,
                ))
            .toList(),
      );

      final response = await api.surveyControllerSubmitMobileSurvey(
        mobileSurveyRequest: request,
      );

      final result = response.data?.data;
      if (result == null) {
        state = const AsyncData(null);
        return null;
      }

      final dao = ref.read(surveyDaoProvider);
      final sessionId = const Uuid().v4();
      final answersMap = <String, dynamic>{};
      for (final a in answers) {
        final key = a.questionId;
        if (answersMap.containsKey(key)) {
          final existing = answersMap[key];
          if (existing is List) {
            existing.add(a.answerId);
          } else {
            answersMap[key] = [existing, a.answerId];
          }
        } else {
          answersMap[key] = a.answerId;
        }
      }
      await dao.insertSession(LocalSurveySessionsCompanion.insert(
        id: sessionId,
        userId: userId,
        answersJson: jsonEncode(answersMap),
        resultJson: jsonEncode(result.toJson()),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        productCount: Value(result.products.length),
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

List<SurveyQuestionView> _fallbackQuestions() => [
      SurveyQuestionView(
        id: 'gender',
        question: 'Bạn đang tìm nước hoa cho ai?',
        questionType: 'single',
        answers: [
          SurveyAnswerView(id: 'gender_men', answer: 'Nam', displayText: 'Nam'),
          SurveyAnswerView(
              id: 'gender_women', answer: 'Nữ', displayText: 'Nữ'),
          SurveyAnswerView(
              id: 'gender_unisex', answer: 'Unisex', displayText: 'Unisex'),
        ],
      ),
      SurveyQuestionView(
        id: 'occasion',
        question: 'Dịp sử dụng là gì?',
        questionType: 'single',
        answers: [
          SurveyAnswerView(
              id: 'occasion_daily', answer: 'Hàng ngày', displayText: 'Hàng ngày'),
          SurveyAnswerView(
              id: 'occasion_office', answer: 'Đi làm', displayText: 'Đi làm'),
          SurveyAnswerView(
              id: 'occasion_date', answer: 'Hẹn hò', displayText: 'Hẹn hò'),
          SurveyAnswerView(
              id: 'occasion_special',
              answer: 'Dịp đặc biệt',
              displayText: 'Dịp đặc biệt'),
        ],
      ),
      SurveyQuestionView(
        id: 'budget',
        question: 'Ngân sách của bạn?',
        questionType: 'single',
        answers: [
          SurveyAnswerView(
              id: 'budget_under1m',
              answer: 'Dưới 1 triệu',
              displayText: 'Dưới 1 triệu'),
          SurveyAnswerView(
              id: 'budget_1m_3m',
              answer: '1 - 3 triệu',
              displayText: '1 - 3 triệu'),
          SurveyAnswerView(
              id: 'budget_above3m',
              answer: 'Trên 3 triệu',
              displayText: 'Trên 3 triệu'),
        ],
      ),
      SurveyQuestionView(
        id: 'scent_family',
        question: 'Hương thơm bạn thích?',
        questionType: 'single',
        answers: [
          SurveyAnswerView(
              id: 'scent_floral', answer: 'Hoa cỏ', displayText: 'Hoa cỏ'),
          SurveyAnswerView(
              id: 'scent_woody', answer: 'Gỗ', displayText: 'Gỗ'),
          SurveyAnswerView(
              id: 'scent_citrus', answer: 'Cam chanh', displayText: 'Cam chanh'),
          SurveyAnswerView(
              id: 'scent_oriental',
              answer: 'Phương Đông',
              displayText: 'Phương Đông'),
          SurveyAnswerView(
              id: 'scent_fresh', answer: 'Tươi mát', displayText: 'Tươi mát'),
        ],
      ),
      SurveyQuestionView(
        id: 'longevity',
        question: 'Thời gian lưu hương mong muốn?',
        questionType: 'single',
        answers: [
          SurveyAnswerView(
              id: 'longevity_moderate',
              answer: 'Trung bình (3-5h)',
              displayText: 'Trung bình (3-5h)'),
          SurveyAnswerView(
              id: 'longevity_long',
              answer: 'Lâu (6-8h)',
              displayText: 'Lâu (6-8h)'),
          SurveyAnswerView(
              id: 'longevity_eternal',
              answer: 'Rất lâu (8h+)',
              displayText: 'Rất lâu (8h+)'),
        ],
      ),
    ];

final surveyProvider =
    AsyncNotifierProvider<SurveyNotifier, MobileSurveyResponseData?>(
  SurveyNotifier.new,
);