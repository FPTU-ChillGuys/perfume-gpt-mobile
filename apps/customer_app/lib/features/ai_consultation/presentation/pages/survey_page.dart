import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:uuid/uuid.dart';
import '../../../../core/db/database_provider.dart';
import '../../../../core/db/database.dart';
import '../../../../core/utils/price_formatter.dart';

class _SurveyQuestionView {
  final String id;
  final String question;
  final List<_SurveyAnswerView> answers;

  _SurveyQuestionView({
    required this.id,
    required this.question,
    required this.answers,
  });
}

class _SurveyAnswerView {
  final String id;
  final String answer;

  _SurveyAnswerView({required this.id, required this.answer});
}

final _surveyQuestionsProvider = FutureProvider.autoDispose<List<_SurveyQuestionView>>((ref) async {
  try {
    final api = ref.read(common.aiApiClientProvider).getSurveysApi();
    final response = await api.surveyControllerGetAllSurveys();
    final questions = response.data?.data;
    if (questions != null && questions.isNotEmpty) {
      return questions.where((q) => q.isActive).map((q) {
        final answers = q.answers ?? [];
        return _SurveyQuestionView(
          id: q.id,
          question: q.question ?? '',
          answers: answers.map((a) => _SurveyAnswerView(
            id: a.id,
            answer: a.answer ?? '',
          )).toList(),
        );
      }).toList();
    }
  } catch (_) {}

  // Fallback hardcoded questions
  return [
    _SurveyQuestionView(
      id: 'gender',
      question: 'Who are you shopping for?',
      answers: [
        _SurveyAnswerView(id: 'gender_men', answer: 'Men'),
        _SurveyAnswerView(id: 'gender_women', answer: 'Women'),
        _SurveyAnswerView(id: 'gender_unisex', answer: 'Unisex'),
      ],
    ),
    _SurveyQuestionView(
      id: 'occasion',
      question: 'What is the occasion?',
      answers: [
        _SurveyAnswerView(id: 'occasion_daily', answer: 'Daily Wear'),
        _SurveyAnswerView(id: 'occasion_office', answer: 'Office'),
        _SurveyAnswerView(id: 'occasion_date', answer: 'Date Night'),
        _SurveyAnswerView(id: 'occasion_special', answer: 'Special Event'),
      ],
    ),
    _SurveyQuestionView(
      id: 'budget',
      question: 'What is your budget range?',
      answers: [
        _SurveyAnswerView(id: 'budget_under1m', answer: 'Under 1M VND'),
        _SurveyAnswerView(id: 'budget_1m_3m', answer: '1M - 3M VND'),
        _SurveyAnswerView(id: 'budget_above3m', answer: 'Above 3M VND'),
      ],
    ),
    _SurveyQuestionView(
      id: 'scent_family',
      question: 'Which scent family do you prefer?',
      answers: [
        _SurveyAnswerView(id: 'scent_floral', answer: 'Floral'),
        _SurveyAnswerView(id: 'scent_woody', answer: 'Woody'),
        _SurveyAnswerView(id: 'scent_citrus', answer: 'Citrus'),
        _SurveyAnswerView(id: 'scent_oriental', answer: 'Oriental'),
        _SurveyAnswerView(id: 'scent_fresh', answer: 'Fresh'),
      ],
    ),
    _SurveyQuestionView(
      id: 'longevity',
      question: 'How important is longevity?',
      answers: [
        _SurveyAnswerView(id: 'longevity_moderate', answer: 'Moderate (3-5h)'),
        _SurveyAnswerView(id: 'longevity_long', answer: 'Long-lasting (6-8h)'),
        _SurveyAnswerView(id: 'longevity_eternal', answer: 'Eternal (8h+)'),
      ],
    ),
  ];
});

class SurveyPage extends ConsumerStatefulWidget {
  const SurveyPage({super.key});

  @override
  ConsumerState<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends ConsumerState<SurveyPage> {
  int _currentStep = 0;
  final Map<String, String> _answers = {};
  bool _isSubmitting = false;
  String? _resultAiMessage;
  List<ProductCardOutputItemDto> _resultProducts = [];
  String? _errorMessage;

  void _nextStep(_SurveyQuestionView question, _SurveyAnswerView answer) {
    _answers[question.id] = answer.id;
    if (_currentStep < ref.read(_surveyQuestionsProvider).value!.length - 1) {
      setState(() => _currentStep++);
    } else {
      _submitSurvey();
    }
  }

  Future<void> _submitSurvey() async {
    setState(() => _isSubmitting = true);
    try {
      final questions = ref.read(_surveyQuestionsProvider).value!;
      final user = ref.read(common.authProvider).value;
      final userId = user?.id;

      final surveyQuesAnsDetailRequest = questions.map((q) {
        return SurveyQuesAnsDetailRequest(
          questionId: q.id,
          answerId: _answers[q.id] ?? '',
        );
      }).toList();

      final api = ref.read(common.aiApiClientProvider).getSurveysApi();
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

      final sessionId = const Uuid().v4();
      final dao = ref.read(surveyDaoProvider);
      await dao.insertSession(LocalSurveySessionsCompanion.insert(
        id: sessionId,
        userId: userId ?? 'guest',
        answersJson: jsonEncode(_answers),
        resultJson: rawData ?? jsonEncode({'aiMessage': aiMessage, 'products': productsJson}),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        productCount: Value(products.length),
      ));

      setState(() {
        _resultAiMessage = aiMessage ?? 'Hoàn thành khảo sát!';
        _resultProducts = products;
        _isSubmitting = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Có lỗi xảy ra, vui lòng thử lại.';
        _isSubmitting = false;
      });
    }
  }

  void _resetSurvey() {
    setState(() {
      _currentStep = 0;
      _answers.clear();
      _resultAiMessage = null;
      _resultProducts = [];
      _errorMessage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionsAsync = ref.watch(_surveyQuestionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Khảo sát mùi hương'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: () => context.push('/survey/history'),
            child: const Text('Lịch sử'),
          ),
        ],
      ),
      body: questionsAsync.when(
        data: (questions) {
          if (_resultAiMessage != null || _errorMessage != null) {
            return _buildResultView();
          }
          if (_isSubmitting) {
            return const Center(child: CircularProgressIndicator());
          }
          final question = questions[_currentStep];
          return _buildQuestionView(question, questions.length);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Lỗi: $err')),
      ),
    );
  }

  Widget _buildQuestionView(_SurveyQuestionView question, int totalSteps) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(
            value: (_currentStep + 1) / totalSteps,
            backgroundColor: Colors.grey.withValues(alpha: 0.2),
          ),
          const SizedBox(height: 24),
          Text(
            'Câu hỏi ${_currentStep + 1} / $totalSteps',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            question.question,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          ...question.answers.map((answer) => Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: OutlinedButton(
              onPressed: () => _nextStep(question, answer),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                answer.answer,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildResultView() {
    final hasError = _errorMessage != null;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (hasError) ...[
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.red),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _resetSurvey,
              child: const Text('Thử lại'),
            ),
          ] else ...[
            const Icon(Icons.check_circle_outline, color: Colors.green, size: 48),
            const SizedBox(height: 16),
            Text(
              _resultAiMessage ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            if (_resultProducts.isNotEmpty)
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: _resultProducts.length,
                  itemBuilder: (context, index) {
                    final product = _resultProducts[index];
                    return _SurveyProductCard(product: product);
                  },
                ),
              ),
            if (_resultProducts.isEmpty)
              const Expanded(
                child: Center(child: Text('Không có sản phẩm phù hợp.')),
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _resetSurvey,
              child: const Text('Làm lại khảo sát'),
            ),
            TextButton(
              onPressed: () => context.push('/store'),
              child: const Text('Đến cửa hàng'),
            ),
          ],
        ],
      ),
    );
  }
}

class _SurveyProductCard extends StatelessWidget {
  final ProductCardOutputItemDto product;

  const _SurveyProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: InkWell(
        onTap: () => context.push('/product/${product.id}'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: product.primaryImage != null
                  ? Image.network(
                      product.primaryImage as String,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (_, __, ___) => const Center(
                        child: Icon(Icons.image_not_supported),
                      ),
                    )
                  : const Center(child: Icon(Icons.image_not_supported)),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      product.brandName,
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getPriceRange(),
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getPriceRange() {
    if (product.variants.isEmpty) return 'N/A';
    final prices = product.variants.map((v) => v.basePrice).whereType<num>().toList();
    if (prices.isEmpty) return 'N/A';
    final minPrice = prices.reduce((a, b) => a < b ? a : b);
    final maxPrice = prices.reduce((a, b) => a > b ? a : b);
    if (minPrice == maxPrice) return PriceFormatter.format(minPrice.toDouble());
    return PriceFormatter.formatRange(minPrice.toDouble(), maxPrice.toDouble());
  }
}
