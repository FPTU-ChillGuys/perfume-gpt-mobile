import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatSession extends _$ChatSession {
  String? _conversationId;
  String? _guestUserId;

  String? get guestUserId => _guestUserId;

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
        _guestUserId = latestConversation.userId;
        final messages = latestConversation.messages.asMap().entries.map((
          entry,
        ) {
          final index = entry.key;
          final m = entry.value;
          final isAi = m.sender == MessageResponseSenderEnum.assistant;
          final authorId = isAi ? 'ai' : (latestConversation.userId);

          final messageId = '${latestConversation.id}_$index';

          final hasStructuredData = isAi &&
              ((m.products != null && m.products!.isNotEmpty) ||
                  (m.suggestedQuestions != null &&
                      m.suggestedQuestions!.isNotEmpty));

          if (isAi && hasStructuredData) {
            return Message.custom(
              authorId: authorId,
              createdAt: m.createdAt,
              id: messageId,
              metadata: {
                'text': m.message,
                'products': m.products?.map((p) => p.toJson()).toList(),
                'suggestedQuestions': m.suggestedQuestions,
              },
            );
          }

          return Message.text(
            authorId: authorId,
            createdAt: m.createdAt,
            id: messageId,
            text: m.message,
          );
        }).toList();

        return messages;
      }
    } catch (e) {
      // Fallback to new conversation if failed to fetch or no previous conversations
    }

    _conversationId = const Uuid().v4();
    return [];
  }

  void sendMessage(String text) async {
    if (state.value == null) return;

    final user = ref.read(authProvider).value;
    final userId = user?.id ?? (_guestUserId ??= const Uuid().v4());

    final userMessage = Message.text(
      authorId: userId,
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

      final history = state.value!.map((m) {
        String msgText;
        if (m is TextMessage) {
          msgText = m.text;
        } else if (m is CustomMessage && m.metadata?['text'] != null) {
          msgText = m.metadata!['text'] as String;
        } else {
          msgText = '';
        }

        final isAi = m.authorId == 'ai';

        if (isAi) {
          final customMsg = m is CustomMessage ? m : null;
          final storedProducts = customMsg?.metadata?['products'];
          final storedSuggestions = customMsg?.metadata?['suggestedQuestions'];

          return ChatMessageRequest(
            sender: ChatMessageRequestSenderEnum.assistant,
            message: msgText,
            products: storedProducts != null
                ? (storedProducts as List<dynamic>)
                    .map((p) => ProductCardOutputItemDto.fromJson(
                        p as Map<String, dynamic>))
                    .toList()
                : null,
            suggestedQuestions:
                storedSuggestions?.cast<String>().toList(),
          );
        }

        return ChatMessageRequest(
          sender: ChatMessageRequestSenderEnum.user,
          message: msgText,
        );
      }).toList();

      final request = ChatRequest(
        id: _conversationId!,
        userId: userId,
        messages: history,
        isMobile: true,
      );

      final response = await conversationApi.conversationControllerChat(
        chatRequest: request,
      );

      final conversationResponse = response.data?.data;
      final aiLastMessage = conversationResponse?.messages.lastOrNull;

      if (aiLastMessage != null) {
        final hasStructuredData =
            (aiLastMessage.products != null &&
                aiLastMessage.products!.isNotEmpty) ||
            (aiLastMessage.suggestedQuestions != null &&
                aiLastMessage.suggestedQuestions!.isNotEmpty);

        Message aiMessage;
        if (hasStructuredData) {
          aiMessage = Message.custom(
            authorId: 'ai',
            createdAt: DateTime.now(),
            id: const Uuid().v4(),
            metadata: {
              'text': aiLastMessage.message,
              'products':
                  aiLastMessage.products?.map((p) => p.toJson()).toList(),
              'suggestedQuestions': aiLastMessage.suggestedQuestions,
            },
          );
        } else {
          aiMessage = Message.text(
            authorId: 'ai',
            createdAt: DateTime.now(),
            id: const Uuid().v4(),
            text: aiLastMessage.message,
          );
        }

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