import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentStep = 0;
  final Map<String, String> _answers = {};

  final List<Map<String, dynamic>> _questions = [
    {
      'id': 'gender',
      'question': 'Who are you shopping for?',
      'options': ['Men', 'Women', 'Unisex'],
    },
    {
      'id': 'occasion',
      'question': 'What is the occasion?',
      'options': ['Daily Wear', 'Office', 'Date Night', 'Special Event'],
    },
    {
      'id': 'budget',
      'question': 'What is your budget range?',
      'options': ['Under 1M VND', '1M - 3M VND', 'Above 3M VND'],
    },
    {
      'id': 'scent_family',
      'question': 'Which scent family do you prefer?',
      'options': ['Floral', 'Woody', 'Citrus', 'Oriental', 'Fresh'],
    },
    {
      'id': 'longevity',
      'question': 'How important is longevity?',
      'options': ['Moderate (3-5h)', 'Long-lasting (6-8h)', 'Eternal (8h+)'],
    },
  ];

  void _nextStep(String answer) {
    _answers[_questions[_currentStep]['id']] = answer;
    if (_currentStep < _questions.length - 1) {
      setState(() {
        _currentStep++;
      });
    } else {
      _showResults();
    }
  }

  void _showResults() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Quiz Completed!'),
        content: const Text(
          'AI is analyzing your preferences to find the best matches...',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              context.go('/store'); // Go to store to see results (mocked)
            },
            child: const Text('View Recommendations'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentStep];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scent Quiz'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LinearProgressIndicator(
              value: (_currentStep + 1) / _questions.length,
              backgroundColor: Colors.grey.withValues(alpha: 0.2),
            ),
            const SizedBox(height: 24),
            Text(
              'Step ${_currentStep + 1} of ${_questions.length}',
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              question['question'],
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ...List.generate(
              question['options'].length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: OutlinedButton(
                  onPressed: () => _nextStep(question['options'][index]),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    question['options'][index],
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
