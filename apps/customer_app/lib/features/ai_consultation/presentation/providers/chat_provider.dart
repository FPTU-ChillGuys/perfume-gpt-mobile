import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatSession extends _$ChatSession {
  @override
  List<Message> build() {
    return [
      Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text:
            'Hello! I am your AI fragrance expert. How can I help you find your perfect scent today?',
      ),
    ];
  }

  void sendMessage(String text) async {
    final user = ref.read(authProvider).value;
    final userMessage = Message.text(
      authorId: user?.id ?? 'user',
      createdAt: DateTime.now(),
      id: const Uuid().v4(),
      text: text,
    );

    state = [userMessage, ...state];

    try {
      final aiApi = ref.read(apiClientProvider).getAiApi();
      final response = await aiApi.aIControllerSearchProductWithAI(prompt: text);
      final aiResponseText = response.data?.data ??
          'I am sorry, I could not process that request.';

      final aiMessage = Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: aiResponseText,
      );

      state = [aiMessage, ...state];
    } catch (e) {
      final errorMessage = Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: 'Sorry, I encountered an error. Please try again later.',
      );
      state = [errorMessage, ...state];
    }
  }
}
