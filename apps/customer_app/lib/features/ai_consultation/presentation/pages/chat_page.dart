import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/chat_provider.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late final InMemoryChatController _chatController;

  @override
  void initState() {
    super.initState();
    _chatController = InMemoryChatController();
  }

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  Future<User?> _resolveUser(String userId) async {
    if (userId == 'ai') {
      return const User(id: 'ai', name: 'PerfumeGPT');
    }
    final user = ref.read(common.authProvider).value;
    return User(id: userId, name: user?.name ?? 'User');
  }

  @override
  Widget build(BuildContext context) {
    final messagesAsync = ref.watch(chatSessionProvider);
    final user = ref.watch(common.authProvider).value;

    return Scaffold(
      appBar: AppBar(title: const Text('AI Consultation')),
      body: messagesAsync.when(
        data: (messages) {
          // Sync messages with controller
          _chatController.setMessages(messages);
          return Chat(
            chatController: _chatController,
            currentUserId: user?.id ?? 'user',
            resolveUser: _resolveUser,
            onMessageSend: (String text) {
              ref.read(chatSessionProvider.notifier).sendMessage(text);
            },
            theme:
                ChatTheme.light(
                  fontFamily:
                      Theme.of(context).textTheme.bodyMedium?.fontFamily,
                ).copyWith(
                  colors: ChatColors.light().copyWith(
                    primary: Theme.of(context).colorScheme.primary,
                    onPrimary: Theme.of(context).colorScheme.onPrimary,
                    surface: Theme.of(context).colorScheme.surface,
                    onSurface: Theme.of(context).colorScheme.onSurface,
                    surfaceContainer: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                  ),
                ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
