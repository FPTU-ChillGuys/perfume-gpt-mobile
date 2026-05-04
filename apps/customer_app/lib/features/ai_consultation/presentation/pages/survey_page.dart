import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:uuid/uuid.dart';
import '../../../../core/utils/price_formatter.dart';
import '../providers/chat_provider.dart';
import '../providers/survey_provider.dart';

class SurveyPage extends ConsumerStatefulWidget {
  const SurveyPage({super.key});

  @override
  ConsumerState<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends ConsumerState<SurveyPage> {
  int _currentStep = 0;
  final Map<String, Set<String>> _answers = {};
  List<SurveyQuestionView>? _questions;
  late final Future<List<SurveyQuestionView>> _questionsFuture;

  @override
  void initState() {
    super.initState();
    _questionsFuture =
        ref.read(surveyProvider.notifier).loadQuestions();
  }

  String _resolveUserId() {
    final user = ref.read(common.authProvider).value;
    if (user?.id != null) return user!.id;
    final chatGuestId = ref.read(chatSessionProvider.notifier).guestUserId;
    return chatGuestId ?? const Uuid().v4();
  }

  bool _isMultipleChoice(SurveyQuestionView q) =>
      q.questionType == 'multiple';

  bool _isAnswerSelected(SurveyQuestionView q, SurveyAnswerView a) =>
      _answers[q.id]?.contains(a.id) ?? false;

  void _toggleAnswer(SurveyQuestionView q, SurveyAnswerView a) {
    setState(() {
      _answers.putIfAbsent(q.id, () => {});
      if (_answers[q.id]!.contains(a.id)) {
        _answers[q.id]!.remove(a.id);
      } else {
        _answers[q.id]!.add(a.id);
      }
    });
  }

  void _selectSingleAndNext(SurveyQuestionView q, SurveyAnswerView a) {
    setState(() {
      _answers[q.id] = {a.id};
    });
    _advanceStep();
  }

  void _advanceStep() {
    if (_currentStep < (_questions!.length - 1)) {
      setState(() => _currentStep++);
    } else {
      Future.microtask(_loadAndSubmit);
    }
  }

  void _goBack() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
    }
  }

  Future<void> _loadAndSubmit() async {
    final questions = _questions;
    if (questions == null) return;

    final userId = _resolveUserId();

    final answerList = <({String questionId, String answerId})>[];
    for (final q in questions) {
      final selected = _answers[q.id];
      if (selected != null && selected.isNotEmpty) {
        for (final answerId in selected) {
          answerList.add((questionId: q.id, answerId: answerId));
        }
      }
    }

    await ref.read(surveyProvider.notifier).submitSurvey(userId, answerList);
  }

  void _resetSurvey() {
    setState(() {
      _currentStep = 0;
      _answers.clear();
    });
    ref.invalidate(surveyProvider);
  }

  @override
  Widget build(BuildContext context) {
    final surveyState = ref.watch(surveyProvider);
    final hasResult = surveyState.value != null;

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
      body: hasResult
          ? _buildResultView(surveyState.value!)
          : surveyState.isLoading
              ? const Center(child: CircularProgressIndicator())
              : surveyState.hasError
                  ? _buildErrorView()
                  : _buildQuestionFlow(),
    );
  }

  Widget _buildQuestionFlow() {
    return FutureBuilder<List<SurveyQuestionView>>(
      future: _questionsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(
            child: Text(
              'Không thể tải câu hỏi: ${snapshot.error ?? "Lỗi không xác định"}',
            ),
          );
        }

        _questions ??= snapshot.data!;
        final question = _questions![_currentStep];
        final isMultiple = _isMultipleChoice(question);
        return _buildQuestionView(question, _questions!.length, isMultiple);
      },
    );
  }

  Widget _buildQuestionView(
    SurveyQuestionView question,
    int totalSteps,
    bool isMultiple,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(
            value: (_currentStep + 1) / totalSteps,
            backgroundColor: Colors.grey.withValues(alpha: 0.2),
          ),
          const SizedBox(height: 16),
          if (_currentStep > 0)
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                onPressed: _goBack,
                icon: const Icon(Icons.arrow_back, size: 18),
                label: const Text('Quay lại'),
              ),
            ),
          const SizedBox(height: 8),
          Text(
            'Câu hỏi ${_currentStep + 1} / $totalSteps',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          if (isMultiple) ...[
            const SizedBox(height: 4),
            Text(
              'Có thể chọn nhiều đáp án',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
          ],
          const SizedBox(height: 24),
          ...question.answers.map((answer) {
            if (isMultiple) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CheckboxListTile(
                  value: _isAnswerSelected(question, answer),
                  onChanged: (_) => _toggleAnswer(question, answer),
                  title: Text(answer.displayText),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: OutlinedButton(
                onPressed: () => _selectSingleAndNext(question, answer),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  answer.displayText,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            );
          }),
          if (isMultiple) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final selected = _answers[question.id];
                if (selected == null || selected.isEmpty) return;
                _advanceStep();
              },
              child: const Text('Tiếp tục'),
            ),
          ],
        ],
      ),
    );
  }

  MarkdownStyleSheet _aiMessageStyleSheet(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.onSurfaceVariant;
    return MarkdownStyleSheet(
      p: TextStyle(color: textColor, height: 1.5),
      strong: TextStyle(color: textColor, fontWeight: FontWeight.bold),
      em: TextStyle(color: textColor, fontStyle: FontStyle.italic),
      listBullet: TextStyle(color: textColor),
      code: TextStyle(
        color: textColor,
        backgroundColor:
            Theme.of(context).colorScheme.surfaceContainerHighest,
        fontSize: 13,
      ),
      codeblockDecoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildResultView(MobileSurveyResponseData result) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.check_circle_outline,
                    color: Colors.green, size: 48),
                const SizedBox(height: 16),
                ...result.messages.map((msg) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MarkdownBody(
                            data: msg.message,
                            selectable: true,
                            styleSheet:
                                _aiMessageStyleSheet(context),
                          ),
                          if (msg.products.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            ...msg.products.map((p) => Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 8.0),
                                  child: _MobileProductCard(product: p),
                                )),
                          ],
                        ],
                      ),
                    )),
                if (result.messages
                        .every((m) => m.products.isEmpty) &&
                    result.products.isNotEmpty)
                  ...result.products.map((p) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: _MobileProductCard(product: p),
                      )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: _resetSurvey,
                child: const Text('Làm lại khảo sát'),
              ),
              TextButton(
                onPressed: () => context.push('/store'),
                child: const Text('Đến cửa hàng'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              'Có lỗi xảy ra, vui lòng thử lại.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.red),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _resetSurvey,
              child: const Text('Thử lại'),
            ),
          ],
        ),
      ),
    );
  }
}

class _MobileProductCard extends StatelessWidget {
  final MobileSurveyProduct product;

  const _MobileProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: InkWell(
        onTap: () => context.push('/product/${product.id}'),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: product.primaryImage.isNotEmpty
                    ? Image.network(
                        product.primaryImage,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
                                child: Icon(Icons.image_not_supported)),
                      )
                    : const Center(child: Icon(Icons.image_not_supported)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        product.brandName,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _formatPrice(),
                        style: TextStyle(
                          fontSize: 13,
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
      ),
    );
  }

  String _formatPrice() {
    final minPrice = product.minPrice.toDouble();
    final maxPrice = product.maxPrice.toDouble();
    if (minPrice == 0 && maxPrice == 0) return 'Liên hệ';
    if (minPrice == maxPrice) return PriceFormatter.format(minPrice);
    return PriceFormatter.formatRange(minPrice, maxPrice);
  }
}