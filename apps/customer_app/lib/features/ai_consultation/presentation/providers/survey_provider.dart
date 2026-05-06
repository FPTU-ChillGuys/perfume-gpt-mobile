import 'dart:convert';
import 'package:flutter/foundation.dart';
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
      throw Exception('Không có dữ liệu câu hỏi khảo sát.');
    } catch (e) {
      debugPrint('SurveyNotifier: Failed to load questions from API: $e');
      rethrow;
    }
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

      state = AsyncData(result);

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

      try {
        await dao.insertSession(LocalSurveySessionsCompanion.insert(
          id: sessionId,
          userId: userId,
          answersJson: jsonEncode(answersMap),
          resultJson: Value(jsonEncode(result.toJson())),
          createdAt: DateTime.now().millisecondsSinceEpoch,
          productCount: Value(result.products.length),
        ));
      } catch (e) {
        debugPrint('SurveyNotifier: Failed to save session to DB: $e');
      }

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

final surveyProvider =
    AsyncNotifierProvider<SurveyNotifier, MobileSurveyResponseData?>(
  SurveyNotifier.new,
);