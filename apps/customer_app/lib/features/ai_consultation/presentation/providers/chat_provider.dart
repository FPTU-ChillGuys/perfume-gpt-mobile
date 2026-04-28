import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatSession extends _$ChatSession {
  String? _conversationId;

  @override
  Future<List<Message>> build() async {
    final aiApiClient = ref.read(aiApiClientProvider);
    final conversationApi = aiApiClient.getConversationApi();

    try {
      final response = await conversationApi
          .conversationControllerGetAllConversationsPaginated(pageSize: 1);

      final latestConversation = response.data?.payload?.items.firstOrNull;

      if (latestConversation != null) {
        _conversationId = latestConversation.id;
        final messages =
            latestConversation.messages?.map((m) {
              return Message.text(
                authorId: m.sender == 'assistant'
                    ? 'ai'
                    : (latestConversation.userId ?? 'user'),
                createdAt: m.createdAt,
                id: m.id,
                text: m.message,
              );
            }).toList() ??
            [];

        return messages;
      }
    } catch (e) {
      // Fallback to new conversation if failed to fetch or no previous conversations
    }

    _conversationId = const Uuid().v4();
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
    if (state.value == null) return;

    final user = ref.read(authProvider).value;
    final userMessage = Message.text(
      authorId: user?.id ?? 'user',
      createdAt: DateTime.now(),
      id: const Uuid().v4(),
      text: text,
    );

    final previousMessages = state.value!;
    state = AsyncData([...previousMessages, userMessage]);

    try {
      final aiApiClient = ref.read(aiApiClientProvider);
      final conversationApi = aiApiClient.getConversationApi();

      _conversationId ??= const Uuid().v4();

      // Construct history for V10 API - state is already oldest first
      final history = state.value!.map((m) {
        return MessageRequestDto(
          sender: m.authorId == 'ai'
              ? MessageRequestDtoSenderEnum.assistant
              : MessageRequestDtoSenderEnum.user,
          message: (m as TextMessage).text,
        );
      }).toList();

      final request = ConversationRequestDto(
        id: _conversationId!,
        messages: history,
      );

      final response = await conversationApi
          .conversationControllerConversationV10(
            conversationRequestDto: request,
          );

      final conversationResponse = response.data?.data;
      final aiLastMessage = conversationResponse?.messages.lastOrNull;

      if (aiLastMessage != null) {
        final aiMessage = Message.text(
          authorId: 'ai',
          createdAt: DateTime.now(),
          id: const Uuid().v4(),
          text: aiLastMessage.message,
        );
        state = AsyncData([...state.value!, aiMessage]);
      } else {
        throw Exception('No response from AI');
      }
    } catch (e) {
      final errorMessage = Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: 'Sorry, I encountered an error. Please try again later.',
      );
      state = AsyncData([...state.value!, errorMessage]);
    }
  }
}
