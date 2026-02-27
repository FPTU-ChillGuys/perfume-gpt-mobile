import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/chat_provider.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(chatSessionProvider);
    final user = ref.watch(authProvider).value;

    return Scaffold(
      appBar: AppBar(title: const Text('AI Consultation')),
      body: Chat(
        messages: messages,
        onSendPressed: (partialText) {
          ref.read(chatSessionProvider.notifier).sendMessage(partialText.text);
        },
        user: types.User(
          id: user?.id ?? 'user',
          firstName: user?.name ?? 'User',
        ),
        theme: DefaultChatTheme(
          primaryColor: Theme.of(context).colorScheme.primary,
          secondaryColor: Theme.of(context).colorScheme.secondaryContainer,
          inputBackgroundColor: Theme.of(
            context,
          ).colorScheme.surfaceContainerHighest,
          inputTextColor: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
