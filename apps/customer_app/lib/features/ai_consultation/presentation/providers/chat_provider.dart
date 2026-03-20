import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

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

    // Mock AI response
    await Future.delayed(const Duration(seconds: 2));

    final aiMessage = Message.text(
      authorId: 'ai',
      createdAt: DateTime.now(),
      id: const Uuid().v4(),
      text:
          'Based on your request, I recommend looking for something with woody and citrus notes. Would you like to see some specific products?',
    );

    state = [aiMessage, ...state];
  }
}
